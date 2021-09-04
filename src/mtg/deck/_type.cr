module Mtg::Deck
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
      when /none/i
        None
      when /constructed/i
        Constructed
      when /draft/i
        Draft
      when /sealed/i
        Sealed
      when /cube/i
        Cube
      else
        raise "Unknown Type: #{val}"
      end
    end
  end
end
