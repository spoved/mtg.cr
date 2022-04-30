module Mtg::Card
  FINISHES = [
    "etched",
    "foil",
    "glossy",
    "nonfoil",
    "signed",
  ]

  enum Finishes
    Etched
    Foil
    Glossy
    Nonfoil
    Signed
  end
end
