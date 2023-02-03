module Mtg::Card
  FINISHES = [
    "etched",
    "foil",
    "nonfoil",
    "signed",
  ]

  enum Finishes
    Etched
    Foil
    Nonfoil
    Signed
  end
end
