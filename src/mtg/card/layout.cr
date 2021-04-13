module Mtg::Card
  enum Layout
    Adventure
    Aftermath
    ArtSeries
    Augment
    Emblem
    Flip
    Host
    Leveler
    Meld
    ModalDFC
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
        Layout::ArtSeries
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
        Layout::ModalDFC
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
