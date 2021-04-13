module Mtg::Card
  enum Availability
    Arena
    Dreamcast
    Mtgo
    Paper
    Shandalar

    def self.from_s(value : String) : Availability
      case value
      when "arena"
        Availability::Arena
      when "dreamcast"
        Availability::Dreamcast
      when "mtgo"
        Availability::Mtgo
      when "paper"
        Availability::Paper
      when "shandalar"
        Availability::Shandalar
      else
        raise "Unknown Availability: #{value}"
      end
    end

    def self.new(value : String) : Availability
      self.from_s(value)
    end
  end
end
