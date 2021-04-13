module Mtg::Card
  enum PromoTypes
    ArenaLeague
    BoosterFun
    BoxTopper
    BrawlDeck
    Bundle
    BuyABox
    Convention
    DateStamped
    DraftWeekend
    Duels
    Event
    FNM
    Gameday
    Gateway
    Giftbox
    GodzillaSeries
    InStore
    IntroPack
    JpWalker
    JudgeGift
    League
    MediaInsert
    OpenHouse
    PlaneswalkerStamped
    PlayerRewards
    PremiereShop
    PreRelease
    PromoPack
    PromoStamped
    Release
    SetPromo
    ThemePack
    Tourney
    WizardsPlayNetwork

    def self.from_s(value : String) : PromoTypes
      case value
      when "arenaleague"
        PromoTypes::ArenaLeague
      when "boosterfun"
        PromoTypes::BoosterFun
      when "boxtopper"
        PromoTypes::BoxTopper
      when "brawldeck"
        PromoTypes::BrawlDeck
      when "bundle"
        PromoTypes::Bundle
      when "buyabox"
        PromoTypes::BuyABox
      when "convention"
        PromoTypes::Convention
      when "datestamped"
        PromoTypes::DateStamped
      when "draftweekend"
        PromoTypes::DraftWeekend
      when "duels"
        PromoTypes::Duels
      when "event"
        PromoTypes::Event
      when "fnm"
        PromoTypes::FNM
      when "gameday"
        PromoTypes::Gameday
      when "gateway"
        PromoTypes::Gateway
      when "giftbox"
        PromoTypes::Giftbox
      when "godzillaseries"
        PromoTypes::GodzillaSeries
      when "instore"
        PromoTypes::InStore
      when "intropack"
        PromoTypes::IntroPack
      when "jpwalker"
        PromoTypes::JpWalker
      when "judgegift"
        PromoTypes::JudgeGift
      when "league"
        PromoTypes::League
      when "mediainsert"
        PromoTypes::MediaInsert
      when "openhouse"
        PromoTypes::Openhouse
      when "planeswalkerstamped"
        PromoTypes::PlaneswalkerStamped
      when "playerrewards"
        PromoTypes::PlayerRewards
      when "premiereshop"
        PromoTypes::PremiereShop
      when "prerelease"
        PromoTypes::PreRelease
      when "promopack"
        PromoTypes::PromoPack
      when "promostamped"
        PromoTypes::PromoStamped
      when "release"
        PromoTypes::Release
      when "setpromo"
        PromoTypes::SetPromo
      when "themepack"
        PromoTypes::ThemePack
      when "tourney"
        PromoTypes::Tourney
      when "wizardsplaynetwork"
        PromoTypes::WizardsPlayNetwork
      else
        raise "Unknown PromoTypes: #{value}"
      end
    end

    def self.new(value : String) : PromoTypes
      self.from_s(value)
    end
  end
end
