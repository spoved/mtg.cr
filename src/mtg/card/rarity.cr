module Mtg::Card
  RARITYS = [
    "bonus",
    "common",
    "mythic",
    "rare",
    "special",
    "uncommon",
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
