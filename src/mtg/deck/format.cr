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

    def self.new(val : String) : Format
      case val
      when "none"
        None
      when "casual"
        Casual
      when "standard"
        Standard
      when "future"
        Future
      when "historic"
        Historic
      when "gladiator"
        Gladiator
      when "pioneer"
        Pioneer
      when "modern"
        Modern
      when "legacy"
        Legacy
      when "pauper"
        Pauper
      when "vintage"
        Vintage
      when "penny"
        Penny
      when "commander"
        Commander
      when "brawl"
        Brawl
      when "duel"
        Duel
      when "oldschool"
        Oldschool
      when "premodern"
        Premodern
      else
        raise "Unknown Format: #{val}"
      end
    end
  end
end
