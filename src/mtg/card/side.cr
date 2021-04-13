module Mtg::Card
  enum Side
    A
    B
    C
    D
    E

    def self.from_s(value : String) : Side
      case value
      when "a"
        Side::A
      when "b"
        Side::B
      when "c"
        Side::C
      when "d"
        Side::D
      when "e"
        Side::E
      else
        raise "Unknown Side: #{value}"
      end
    end

    def self.new(value : String) : Side
      self.from_s(value)
    end
  end
end
