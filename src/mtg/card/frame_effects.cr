module Mtg::Card
  FRAME_EFFECTS = [
    "colorshifted",
    "companion",
    "compasslanddfc",
    "devoid",
    "draft",
    "etched",
    "extendedart",
    "fullart",
    "inverted",
    "legendary",
    "lesson",
    "miracle",
    "mooneldrazidfc",
    "nyxtouched",
    "originpwdfc",
    "showcase",
    "snow",
    "sunmoondfc",
    "tombstone",
    "waxingandwaningmoondfc",
  ]

  enum FrameEffects
    ColorShifted
    Companion
    CompassLandDFC
    Devoid
    Draft
    Etched
    ExtendedArt
    FullArt
    Inverted
    Legendary
    Lesson
    Miracle
    MoonEldraziDFC
    NyxTouched
    OriginPwDFC
    Showcase
    Snow
    SunMoonDFC
    Tombstone
    WaxingAndWaningMoonDFC
  end
end
