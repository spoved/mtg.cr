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
      when "bonus"
        Rarity::Bonus
      when "common"
        Rarity::Common
      when "mythic"
        Rarity::Mythic
      when "rare"
        Rarity::Rare
      when "special"
        Rarity::Special
      when "uncommon"
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
