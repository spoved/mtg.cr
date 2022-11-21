module Mtg::Card
  BOOSTER_TYPES = [
    "deck",
    "draft",
  ]

  enum BoosterTypes
    Deck
    Draft
  end
end
