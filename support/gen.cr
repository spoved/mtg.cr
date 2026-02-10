require "./pull"
require "json"
require "file_utils"
require "spoved/ext/string"

SRC_PATH = File.expand_path("./src/mtg")
ALIASES  = get_aliases
SKIP     = %w(language colors colorIdentity colorIndicator)

def make_enum(path, data)
  data.each do |key, val|
    make_enum_file(path, key, val.as_a)
  end
end

def make_enum_file(path, enun, values)
  return if SKIP.includes?(enun)
  return if values.empty?

  file_path = File.join(SRC_PATH, path.underscore)
  file_name = File.join(file_path, "#{enun.underscore}.cr")
  FileUtils.mkdir_p(file_path)
  vs = values.map(&.as_s.klassify).reject!(&.empty?)

  File.open(file_name, "w") do |file|
    file.puts "module Mtg::#{path.camelcase}"

    # Log.error { "cant transform values for #{path} - #{enun}. making a list instead" }
    # Just make a list then
    make_list(enun, values, file)

    file.puts ""
    unless vs.find &.=~(/[^A-Za-z_\-]/)
      file.puts "  enum #{enun.camelcase}"
      values.map(&.as_s).sort!.each do |val|
        name = val.gsub('-', '_').camelcase
        if ALIASES[name]?
          file.puts ALIASES[name]
        else
          file.puts name
        end
      end
      file.puts "  end"
    end

    file.puts "end"
  end
end

def make_list(enun, values, file)
  list = values.map(&.as_s.downcase).uniq!.sort!.reject!(&.empty?).join(%<",\n">).gsub('’', "'")
  var_name = enun.underscore.upcase
  var_name = var_name + "S" unless /S$/ === var_name
  file.puts %<#{var_name} = [\n"#{list}"\n]>
end

def make_from_s(values, file, enun)
  file.puts "def self.from_s(value : String) : #{enun}"
  file.puts "case value"
  values.each do |val|
    name = val.as_s.klassify
    file.puts "when \"#{val.as_s}\""
    file.puts "#{enun}::#{name}"
  end
  file.puts "else"
  file.puts "raise \"Unknown #{enun}: \#{value}\""
  file.puts "end"
  file.puts "end"

  file.puts "def self.new(value : String) : #{enun}"
  file.puts "self.from_s(value)"
  file.puts "end"
end

def get_aliases
  array = [] of NamedTuple(mode: String, name: String)
  File.each_line("support/alias.list") do |line|
    if line =~ /(\+|\-)\s*(.*)/
      array << {mode: $1, name: $2}
    end
  end

  names = array.map do |tuple|
    tuple[:name].downcase
  end.uniq!

  aliases = names.map do |name|
    items = array.select { |tuple| tuple[:name].downcase == name }
    items
  end.to_h do |items|
    name = items.find { |tuple| tuple[:mode] == "+" }.try &.[:name]
    alias_name = items.find { |tuple| tuple[:mode] == "-" }.try &.[:name]

    {name, alias_name}
  end
  aliases
end

def run
  json = JSON.parse(File.read(File.join(CACHE_DIR, "enum_values.json")))
  json["data"].as_h.each do |key, val|
    Log.info { "making enum for #{key}" }

    next if key == "category" || key == "subtype"

    if val.as_h?
      make_enum(key, val.as_h)
    else
      Log.warn &.emit "cant parse #{key}: #{val.inspect}"
    end
  end

  # make_enum("product", {
  #   "category" => json["data"]["sealedProduct"]["category"],
  #   "subtype"  => json["data"]["sealedProduct"]["subtype"],
  # })

  `crystal tool format`
end

# create_aliases
run
