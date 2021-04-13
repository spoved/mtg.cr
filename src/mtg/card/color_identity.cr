module Mtg::Card
  enum ColorIdentity
    B
    G
    R
    U
    W

    def self.from_s(value : String) : ColorIdentity
      case value
      when "B"
        ColorIdentity::B
      when "G"
        ColorIdentity::G
      when "R"
        ColorIdentity::R
      when "U"
        ColorIdentity::U
      when "W"
        ColorIdentity::W
      else
        raise "Unknown ColorIdentity: #{value}"
      end
    end

    def self.new(value : String) : ColorIdentity
      self.from_s(value)
    end
  end
end
