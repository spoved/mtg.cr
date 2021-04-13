module Mtg::Card
  enum Layout
    Adventure
    Aftermath
    Art_series
    Augment
    Emblem
    Flip
    Host
    Leveler
    Meld
    Modal_dfc
    Normal
    Planar
    Saga
    Scheme
    Split
    Token
    Transform
    Vanguard

    def self.from_s(value : String) : Layout
      case value
      when "adventure"
        Layout::Adventure
      when "aftermath"
        Layout::Aftermath
      when "art_series"
        Layout::Art_series
      when "augment"
        Layout::Augment
      when "emblem"
        Layout::Emblem
      when "flip"
        Layout::Flip
      when "host"
        Layout::Host
      when "leveler"
        Layout::Leveler
      when "meld"
        Layout::Meld
      when "modal_dfc"
        Layout::Modal_dfc
      when "normal"
        Layout::Normal
      when "planar"
        Layout::Planar
      when "saga"
        Layout::Saga
      when "scheme"
        Layout::Scheme
      when "split"
        Layout::Split
      when "token"
        Layout::Token
      when "transform"
        Layout::Transform
      when "vanguard"
        Layout::Vanguard
      else
        raise "Unknown Layout: #{value}"
      end
    end

    def self.new(value : String) : Layout
      self.from_s(value)
    end
  end
end
