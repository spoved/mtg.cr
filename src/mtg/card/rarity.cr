module Mtg::Card
  enum Rarity
    Bonus
    Common
    Mythic
    Rare
    Special
    Uncommon

    def self.from_s(value : String) : Rarity
      case value
      when "bonus", "b"
        Rarity::Bonus
      when "common", "c"
        Rarity::Common
      when "mythic", "m", /mythic/i
        Rarity::Mythic
      when "rare", "r"
        Rarity::Rare
      when "special", "s"
        Rarity::Special
      when "uncommon", "u"
        Rarity::Uncommon
      else
        raise "Unknown Rarity: #{value}"
      end
    end

    def self.new(value : String) : Rarity
      self.from_s(value)
    end
  end
end
