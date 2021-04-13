module Mtg::Card
  enum FrameEffects
    Colorshifted
    Companion
    Compasslanddfc
    Devoid
    Draft
    Etched
    Extendedart
    Fullart
    Inverted
    Legendary
    Miracle
    Mooneldrazidfc
    Nyxborn
    Nyxtouched
    Originpwdfc
    Showcase
    Snow
    Sunmoondfc
    Tombstone
    Waxingandwaningmoondfc

    def self.from_s(value : String) : FrameEffects
      case value
      when "colorshifted"
        FrameEffects::Colorshifted
      when "companion"
        FrameEffects::Companion
      when "compasslanddfc"
        FrameEffects::Compasslanddfc
      when "devoid"
        FrameEffects::Devoid
      when "draft"
        FrameEffects::Draft
      when "etched"
        FrameEffects::Etched
      when "extendedart"
        FrameEffects::Extendedart
      when "fullart"
        FrameEffects::Fullart
      when "inverted"
        FrameEffects::Inverted
      when "legendary"
        FrameEffects::Legendary
      when "miracle"
        FrameEffects::Miracle
      when "mooneldrazidfc"
        FrameEffects::Mooneldrazidfc
      when "nyxborn"
        FrameEffects::Nyxborn
      when "nyxtouched"
        FrameEffects::Nyxtouched
      when "originpwdfc"
        FrameEffects::Originpwdfc
      when "showcase"
        FrameEffects::Showcase
      when "snow"
        FrameEffects::Snow
      when "sunmoondfc"
        FrameEffects::Sunmoondfc
      when "tombstone"
        FrameEffects::Tombstone
      when "waxingandwaningmoondfc"
        FrameEffects::Waxingandwaningmoondfc
      else
        raise "Unknown FrameEffects: #{value}"
      end
    end

    def self.new(value : String) : FrameEffects
      self.from_s(value)
    end
  end
end
