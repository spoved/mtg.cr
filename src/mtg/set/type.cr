module Mtg::Set
  enum Type
    Archenemy
    Box
    Commander
    Core
    Draft_innovation
    Duel_deck
    Expansion
    From_the_vault
    Funny
    Masterpiece
    Masters
    Memorabilia
    Planechase
    Premium_deck
    Promo
    Spellbook
    Starter
    Token
    Treasure_chest
    Vanguard

    def self.from_s(value : String) : Type
      case value
      when "archenemy"
        Type::Archenemy
      when "box"
        Type::Box
      when "commander"
        Type::Commander
      when "core"
        Type::Core
      when "draft_innovation"
        Type::Draft_innovation
      when "duel_deck"
        Type::Duel_deck
      when "expansion"
        Type::Expansion
      when "from_the_vault"
        Type::From_the_vault
      when "funny"
        Type::Funny
      when "masterpiece"
        Type::Masterpiece
      when "masters"
        Type::Masters
      when "memorabilia"
        Type::Memorabilia
      when "planechase"
        Type::Planechase
      when "premium_deck"
        Type::Premium_deck
      when "promo"
        Type::Promo
      when "spellbook"
        Type::Spellbook
      when "starter"
        Type::Starter
      when "token"
        Type::Token
      when "treasure_chest"
        Type::Treasure_chest
      when "vanguard"
        Type::Vanguard
      else
        raise "Unknown Type: #{value}"
      end
    end

    def self.new(value : String) : Type
      self.from_s(value)
    end
  end
end
