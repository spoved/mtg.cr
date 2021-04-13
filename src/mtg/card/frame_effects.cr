module Mtg::Card
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
    Miracle
    MoonEldraziDFC
    NyxBorn
    NyxTouched
    OriginPwDFC
    Showcase
    Snow
    SunMoonDFC
    Tombstone
    WaxingAndWaningMoonDFC

    def self.from_s(value : String) : FrameEffects
      case value
      when "colorshifted"
        FrameEffects::ColorShifted
      when "companion"
        FrameEffects::Companion
      when "compasslanddfc"
        FrameEffects::CompassLandDFC
      when "devoid"
        FrameEffects::Devoid
      when "draft"
        FrameEffects::Draft
      when "etched"
        FrameEffects::Etched
      when "extendedart"
        FrameEffects::ExtendedArt
      when "fullart"
        FrameEffects::FullArt
      when "inverted"
        FrameEffects::Inverted
      when "legendary"
        FrameEffects::Legendary
      when "miracle"
        FrameEffects::Miracle
      when "mooneldrazidfc"
        FrameEffects::MoonEldraziDFC
      when "nyxborn"
        FrameEffects::NyxBorn
      when "nyxtouched"
        FrameEffects::NyxTouched
      when "originpwdfc"
        FrameEffects::OriginPwDFC
      when "showcase"
        FrameEffects::Showcase
      when "snow"
        FrameEffects::Snow
      when "sunmoondfc"
        FrameEffects::SunMoonDFC
      when "tombstone"
        FrameEffects::Tombstone
      when "waxingandwaningmoondfc"
        FrameEffects::WaxingAndWaningMoonDFC
      else
        raise "Unknown FrameEffects: #{value}"
      end
    end

    def self.new(value : String) : FrameEffects
      self.from_s(value)
    end
  end
end
