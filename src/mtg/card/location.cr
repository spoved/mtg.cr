module Mtg::Card
  enum Location
    Mainboard
    Sideboard
    Commander
    Companion
    Other

    def self.from_s(value : String) : Location
      case value
      when /main/i
        Location::Mainboard
      when /side/i
        Location::Sideboard
      when /commander/i
        Location::Commander
      when /companion/i
        Location::Companion
      when /other/i
        Location::Other
      else
        raise "Unknown Location: #{value}"
      end
    end

    def self.new(value : String) : Location
      self.from_s(value)
    end
  end
end
