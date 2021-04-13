module Mtg::Card
  enum BorderColor
    Black
    Borderless
    Gold
    Silver
    White

    def self.from_s(value : String) : BorderColor
      case value
      when "black"
        BorderColor::Black
      when "borderless"
        BorderColor::Borderless
      when "gold"
        BorderColor::Gold
      when "silver"
        BorderColor::Silver
      when "white"
        BorderColor::White
      else
        raise "Unknown BorderColor: #{value}"
      end
    end

    def self.new(value : String) : BorderColor
      self.from_s(value)
    end
  end
end
