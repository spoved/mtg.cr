module Mtg::Card
  enum Colors
    B
    G
    R
    U
    W

    def self.from_s(value : String) : Colors
      case value
      when "B"
        Colors::B
      when "G"
        Colors::G
      when "R"
        Colors::R
      when "U"
        Colors::U
      when "W"
        Colors::W
      else
        raise "Unknown Colors: #{value}"
      end
    end

    def self.new(value : String) : Colors
      self.from_s(value)
    end
  end
end
