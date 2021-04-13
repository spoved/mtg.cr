module Mtg::Deck
  TYPES = [
    "Advanced Deck",
    "Advanced Pack",
    "Archenemy Deck",
    "Basic Deck",
    "Brawl Deck",
    "Challenger Deck",
    "Clash Pack",
    "Commander Deck",
    "Duel Deck",
    "Duel Of The Planeswalkers Deck",
    "Event Deck",
    "Game Night Deck",
    "Guild Kit",
    "Halfdeck",
    "Intro Pack",
    "Jumpstart",
    "MTGO Theme Deck",
    "Planechase Deck",
    "Planeswalker Deck",
    "Premium Deck",
    "Spellslinger Starter Kit",
    "Starter Deck",
    "Theme Deck",
    "Welcome Deck",
    "World Championship Decks",
  ]

  enum Type
    None
    Constructed
    Draft
    Sealed
    Cube

    def self.from_s(value : String) : Type
      self.new(value)
    end

    def self.new(val : String) : Type
      case val
      when "none"
        None
      when "constructed"
        Constructed
      when "draft"
        Draft
      when "sealed"
        Sealed
      when "cube"
        Cube
      else
        raise "Unknown Type: #{val}"
      end
    end
  end
end
