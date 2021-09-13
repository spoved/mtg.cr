module Mtg::Card
  SUPERTYPES = [
    "basic",
    "host",
    "legendary",
    "ongoing",
    "snow",
    "world",
  ]

  enum Supertypes
    Basic
    Host
    Legendary
    Ongoing
    Snow
    World
  end
end
