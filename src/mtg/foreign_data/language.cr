module Mtg::ForeignData
  enum Language
    English
    Spanish
    French
    German
    Italian
    Portuguese
    Japanese
    Korean
    Russian
    SimplifiedChinese
    TraditionalChinese
    Hebrew
    Latin
    AncientGreek
    Arabic
    Sanskrit
    Phyrexian

    def self.from_s(value : String) : Language
      self.new(value)
    end

    def self.new(lang : String) : Language
      case lang.downcase
      when "en", /English/i
        English
      when "es", "sp", /Spanish/i
        Spanish
      when "fr", /French/i
        French
      when "de", /German/i
        German
      when "it", /Italian/i
        Italian
      when "pt", /Portuguese/i
        Portuguese
      when "ja", "jp", /Japanese/i
        Japanese
      when "ko", "kr", /Korean/i
        Korean
      when "ru", /Russian/i
        Russian
      when "zhs", "cs", /(Simplified\s?)?Chinese/i
        SimplifiedChinese
      when "zht", "ct", /(Traditional\s?)?Chinese/i
        TraditionalChinese
      when "he", /Hebrew/i
        Hebrew
      when "la", /Latin/i
        Latin
      when "grc", /(Ancient\s?)?Greek/i
        AncientGreek
      when "ar", /Arabic/i
        Arabic
      when "sa", /Sanskrit/i
        Sanskrit
      when "ph", /Phyrexian/i
        Phyrexian
      else
        raise "Unknown language code: #{lang}"
      end
    end
  end
end
