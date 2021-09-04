require "./pull"
require "file_utils"
require "spoved/ext/string"

SRC_PATH = File.expand_path("./src/mtg")

json = File.open(File.join(CACHE_DIR, "enum_values.json")) do |file|
  JSON.parse(file)
end

def make_enum(path, data)
  data.each do |key, val|
    make_enum_file(path, key, val.as_a)
  end
end

def make_enum_file(path, enun, values)
  return if enun == "language"

  file_path = File.join(SRC_PATH, path.underscore)
  file_name = File.join(file_path, "#{enun.underscore}.cr")
  FileUtils.mkdir_p(file_path)
  vs = values.map(&.as_s.klassify)
  if vs.find &.=~(/[^A-Za-z_]/)
    File.open(file_name, "w") do |file|
      file.puts "module Mtg::#{path.camelcase}"

      Log.error { "cant transform values for #{path} - #{enun}. making a list instead" }
      # Just make a list then
      list = values.map(&.as_s).join("\",\n\"")
      var_name = enun.underscore.upcase
      var_name = var_name + "S" unless /S$/ === var_name
      file.puts "#{var_name} = [\n\"#{list}\"\n]"

      file.puts "end"
    end
  else
    # file.puts "enum #{enun.camelcase}"
    # values.each do |val|
    #   name = val.as_s.klassify
    #   file.puts name
    # end
    # make_from_s(values, file, enun.camelcase)
    # file.puts "end"
  end
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

json["data"].as_h.each do |key, val|
  make_enum(key, val.as_h)
end

`crystal tool format`
