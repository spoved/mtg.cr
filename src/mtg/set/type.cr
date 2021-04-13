module Mtg::Set
  enum Type
    Archenemy
    Box
    Commander
    Core
    DraftInnovation
    DuelDeck
    Expansion
    FromTheVault
    Funny
    Masterpiece
    Masters
    Memorabilia
    Planechase
    PremiumDeck
    Promo
    Spellbook
    Starter
    Token
    TreasureChest
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
        Type::DraftInnovation
      when "duel_deck"
        Type::DuelDeck
      when "expansion"
        Type::Expansion
      when "from_the_vault"
        Type::FromTheVault
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
        Type::PremiumDeck
      when "promo"
        Type::Promo
      when "spellbook"
        Type::Spellbook
      when "starter"
        Type::Starter
      when "token"
        Type::Token
      when "treasure_chest"
        Type::TreasureChest
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
