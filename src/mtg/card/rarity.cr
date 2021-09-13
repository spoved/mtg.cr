module Mtg::Card
  RARITYS = [
    "common",
    "uncommon",
    "rare",
    "mythic",
    "special",
    "bonus",
  ]

  enum Rarity
    Bonus
    Common
    Mythic
    Rare
    Special
    Uncommon
  end
end
