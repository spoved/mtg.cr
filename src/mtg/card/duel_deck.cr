module Mtg::Card
  enum DuelDeck
    A
    B

    def self.from_s(value : String) : DuelDeck
      case value
      when "a"
        DuelDeck::A
      when "b"
        DuelDeck::B
      else
        raise "Unknown DuelDeck: #{value}"
      end
    end

    def self.new(value : String) : DuelDeck
      self.from_s(value)
    end
  end
end
