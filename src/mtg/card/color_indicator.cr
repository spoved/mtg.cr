module Mtg::Card
  enum ColorIndicator
    B
    G
    R
    U
    W

    def self.from_s(value : String) : ColorIndicator
      case value
      when "B"
        ColorIndicator::B
      when "G"
        ColorIndicator::G
      when "R"
        ColorIndicator::R
      when "U"
        ColorIndicator::U
      when "W"
        ColorIndicator::W
      else
        raise "Unknown ColorIndicator: #{value}"
      end
    end

    def self.new(value : String) : ColorIndicator
      self.from_s(value)
    end
  end
end
