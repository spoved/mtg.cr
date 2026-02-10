module Mtg::Product
  CATEGORYS = [
    "booster_box",
    "booster_case",
    "booster_pack",
    "box_set",
    "bundle",
    "bundle_case",
    "deck",
    "deck_box",
    "kit",
    "limited_aid_case",
    "limited_aid_tool",
    "multiple_decks",
    "subset",
    "unknown",
  ]

  enum Category
    BoosterBox
    BoosterCase
    BoosterPack
    BoxSet
    Bundle
    BundleCase
    Deck
    DeckBox
    Kit
    LimitedAidCase
    LimitedAidTool
    MultipleDecks
    Subset
    Unknown
  end
end
