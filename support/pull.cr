require "http/client"
require "log"
require "digest"
require "json"

CACHE_DIR  = File.expand_path("./cache")
PULL_FILES = {
  # meta:          "/api/v5/Meta.json",
  # compiled_list: "/api/v5/CompiledList.json",

  keywords:    "/api/v5/Keywords.json",
  enum_values: "/api/v5/EnumValues.json",
  set_list:    "/api/v5/SetList.json",
  card_types:  "/api/v5/CardTypes.json",
}
DIGEST = Digest::SHA256.new
CLIENT = HTTP::Client.new(URI.parse "https://mtgjson.com")

def client
  CLIENT
end

def download_file(path, name)
  response = client.get(path)
  if response.success?
    File.write(File.join(CACHE_DIR, "#{name}.json"), response.body)
  else
    Log.error { "unable to download #{path}" }
    exit(1)
  end
end

def validate_sha256(path, name)
  response = client.get("#{path}.sha256")
  if response.success?
    sha256 = response.body
    file_path = File.join(CACHE_DIR, "#{name}.json")

    File.exists?(file_path) && sha256 == get_sha(File.join(CACHE_DIR, "#{name}.json"))
  else
    Log.error { "unable to get sha256 for #{path}" }
    exit(1)
  end
end

def get_sha(file)
  DIGEST.file(file)
  sha = DIGEST.final.hexstring
  DIGEST.reset
  sha
end

def pull_file(path, name)
  if validate_sha256(path, name)
    Log.info { "#{path} is valid" }
  else
    download_file(path, name)

    if validate_sha256(path, name)
      Log.info { "successfully downloaded #{path}" }
    else
      Log.error { "failed to download #{path}" }
      exit(1)
    end
  end
end

PULL_FILES.each do |name, path|
  pull_file(path, name)
end

client.close
