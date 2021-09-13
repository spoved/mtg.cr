module Mtg::Card
  AVAILABILITYS = [
    "arena",
    "dreamcast",
    "mtgo",
    "paper",
    "shandalar",
  ]

  enum Availability
    Arena
    Dreamcast
    Mtgo
    Paper
    Shandalar
  end
end
