module Mtg::Card
  enum Color
    White
    Blue
    Black
    Red
    Green
    Colorless

    def self.from_s(value : String) : Color
      self.new(value)
    end

    def self.new(color : String) : Color
      case color.downcase
      when "white", "w"
        White
      when "blue", "u"
        Blue
      when "black", "b"
        Black
      when "red", "r"
        Red
      when "green", "g"
        Green
      when "colorless", "c"
        Colorless
      else
        raise "Unknown color code: #{code}"
      end
    end

    def to_char
      case self
      when White     then 'w'
      when Blue      then 'u'
      when Black     then 'b'
      when Red       then 'r'
      when Green     then 'g'
      when Colorless then 'c'
      else
        raise "Unknown color code: #{self}"
      end
    end
  end
end
