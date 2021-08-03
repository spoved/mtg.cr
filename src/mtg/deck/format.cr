module Mtg::Deck
  enum Format
    None
    Casual
    Standard
    Future
    Historic
    Gladiator
    Pioneer
    Modern
    Legacy
    Pauper
    Vintage
    Penny
    Commander
    Brawl
    Duel
    Oldschool
    Premodern

    def self.from_s(value : String) : Format
      self.new(value)
    end

    def self.new(val : String) : Format
      case val
      when /none/i
        None
      when /casual/i
        Casual
      when /standard/i
        Standard
      when /future/i
        Future
      when /historic/i
        Historic
      when /gladiator/i
        Gladiator
      when /pioneer/i
        Pioneer
      when /modern/i
        Modern
      when /legacy/i
        Legacy
      when /pauper/i
        Pauper
      when /vintage/i
        Vintage
      when /penny/i
        Penny
      when /commander/i
        Commander
      when /brawl/i
        Brawl
      when /duel/i
        Duel
      when /oldschool/i
        Oldschool
      when /premodern/i
        Premodern
      else
        raise "Unknown Format: #{val}"
      end
    end
  end
end
