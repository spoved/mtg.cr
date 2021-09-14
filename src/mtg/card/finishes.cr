module Mtg::Card
  FINISHES = ["foil", "nonfoil", "etched", "glossy"]

  enum Finish
    Nonfoil
    Foil
    Etched
    Glossy
  end
end
