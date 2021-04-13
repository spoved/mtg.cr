module Mtg::Card
  enum Supertypes
    Basic
    Host
    Legendary
    Ongoing
    Snow
    World

    def self.from_s(value : String) : Supertypes
      case value
      when "Basic"
        Supertypes::Basic
      when "Host"
        Supertypes::Host
      when "Legendary"
        Supertypes::Legendary
      when "Ongoing"
        Supertypes::Ongoing
      when "Snow"
        Supertypes::Snow
      when "World"
        Supertypes::World
      else
        raise "Unknown Supertypes: #{value}"
      end
    end

    def self.new(value : String) : Supertypes
      self.from_s(value)
    end
  end
end
