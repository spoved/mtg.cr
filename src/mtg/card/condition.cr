module Mtg::Card
  enum Condition
    Mint
    NearMint
    LightlyPlayed
    Played
    HeavilyPlayed
    Poor

    def self.from_s(value : String) : Condition
      self.new(value)
    end

    def self.new(condition : String) : Condition
      case condition.downcase
      when "mint"
        Mint
      when /near\s?mint/i
        NearMint
      when /Lightly\s?Played/i
        LightlyPlayed
      when "played"
        Played
      when /heavily\s?played/i
        HeavilyPlayed
      when "poor"
        Poor
      else
        raise "Unknown condition: #{condition}"
      end
    end
  end
end
