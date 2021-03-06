module Mtg::Card
  LAYOUTS = [
    "adventure",
    "aftermath",
    "art_series",
    "augment",
    "class",
    "double_faced_token",
    "emblem",
    "flip",
    "host",
    "leveler",
    "meld",
    "modal_dfc",
    "normal",
    "planar",
    "reversible_card",
    "saga",
    "scheme",
    "split",
    "token",
    "transform",
    "vanguard",
  ]

  enum Layout
    Adventure
    Aftermath
    ArtSeries
    Augment
    Class
    DoubleFacedToken
    Emblem
    Flip
    Host
    Leveler
    Meld
    ModalDFC
    Normal
    Planar
    ReversibleCard
    Saga
    Scheme
    Split
    Token
    Transform
    Vanguard
  end
end
