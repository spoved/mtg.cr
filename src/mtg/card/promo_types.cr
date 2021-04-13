module Mtg::Card
  enum PromoTypes
    Arenaleague
    Boosterfun
    Boxtopper
    Brawldeck
    Bundle
    Buyabox
    Convention
    Datestamped
    Draftweekend
    Duels
    Event
    Fnm
    Gameday
    Gateway
    Giftbox
    Godzillaseries
    Instore
    Intropack
    Jpwalker
    Judgegift
    League
    Mediainsert
    Openhouse
    Planeswalkerstamped
    Playerrewards
    Premiereshop
    Prerelease
    Promopack
    Promostamped
    Release
    Setpromo
    Themepack
    Tourney
    Wizardsplaynetwork

    def self.from_s(value : String) : PromoTypes
      case value
      when "arenaleague"
        PromoTypes::Arenaleague
      when "boosterfun"
        PromoTypes::Boosterfun
      when "boxtopper"
        PromoTypes::Boxtopper
      when "brawldeck"
        PromoTypes::Brawldeck
      when "bundle"
        PromoTypes::Bundle
      when "buyabox"
        PromoTypes::Buyabox
      when "convention"
        PromoTypes::Convention
      when "datestamped"
        PromoTypes::Datestamped
      when "draftweekend"
        PromoTypes::Draftweekend
      when "duels"
        PromoTypes::Duels
      when "event"
        PromoTypes::Event
      when "fnm"
        PromoTypes::Fnm
      when "gameday"
        PromoTypes::Gameday
      when "gateway"
        PromoTypes::Gateway
      when "giftbox"
        PromoTypes::Giftbox
      when "godzillaseries"
        PromoTypes::Godzillaseries
      when "instore"
        PromoTypes::Instore
      when "intropack"
        PromoTypes::Intropack
      when "jpwalker"
        PromoTypes::Jpwalker
      when "judgegift"
        PromoTypes::Judgegift
      when "league"
        PromoTypes::League
      when "mediainsert"
        PromoTypes::Mediainsert
      when "openhouse"
        PromoTypes::Openhouse
      when "planeswalkerstamped"
        PromoTypes::Planeswalkerstamped
      when "playerrewards"
        PromoTypes::Playerrewards
      when "premiereshop"
        PromoTypes::Premiereshop
      when "prerelease"
        PromoTypes::Prerelease
      when "promopack"
        PromoTypes::Promopack
      when "promostamped"
        PromoTypes::Promostamped
      when "release"
        PromoTypes::Release
      when "setpromo"
        PromoTypes::Setpromo
      when "themepack"
        PromoTypes::Themepack
      when "tourney"
        PromoTypes::Tourney
      when "wizardsplaynetwork"
        PromoTypes::Wizardsplaynetwork
      else
        raise "Unknown PromoTypes: #{value}"
      end
    end

    def self.new(value : String) : PromoTypes
      self.from_s(value)
    end
  end
end
