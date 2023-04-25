module Mtg::Product
  CATEGORYS = [
    "booster_box",
    "booster_pack",
    "box_set",
    "bundle",
    "case",
    "commander_deck",
    "deck",
    "deck_box",
    "draft_set",
    "land_station",
    "prerelease_pack",
    "subset",
    "two_player_starter_set",
  ]

  enum Category
    BoosterBox
    BoosterPack
    BoxSet
    Bundle
    Case
    CommanderDeck
    Deck
    DeckBox
    DraftSet
    LandStation
    PrereleasePack
    Subset
    TwoPlayerStarterSet
  end
end
