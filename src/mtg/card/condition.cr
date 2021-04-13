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
      when "near mint"
        NearMint
      when "lightly played", /Lightly Played/i
        LightlyPlayed
      when "played"
        Played
      when "heavily played"
        HeavilyPlayed
      when "poor"
        Poor
      else
        raise "Unknown condition: #{condition}"
      end
    end
  end
end
