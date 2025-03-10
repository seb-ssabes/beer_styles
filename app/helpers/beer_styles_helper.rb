module BeerStylesHelper
  def country_flag(country)
    mapping = {
      "USA" => "🇺🇸",
      "United States" => "🇺🇸",
      "United Kingdom" => "🇬🇧",
      "England" => "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
      "Scotland" => "🏴󠁧󠁢󠁳󠁣󠁴󠁿",
      "Ireland" => "🇮🇪",
      "Germany" => "🇩🇪",
      "Belgium" => "🇧🇪",
      "France" => "🇫🇷",
      "Czech Republic" => "🇨🇿",
      "Poland" => "🇵🇱",
      "Caribbean" => "Caribbean",
      "Africa, Caribbean" => "Africa, Caribbean",
      "Global" => "🌐",
      "Various" => "🌐"
    }

    mapping[country] || "un"
  end

  def beer_glass(glassware)
    glasses = {
      "Pilsner glass" => "icons/pilsner",
      "Stein or Mug" => "icons/schop",
      "Weizen glass" => "icons/wheat",
      "Weizenbock glass" => "icons/wheat",
      "Tulip glass" => "icons/pilsner",
      "Pint glass" => "icons/pint3",
      "Stein glass" => "icons/schop",
      "Pint Glass" => "icons/pint3",
      "Tulip Glass" => "icons/pilsner",
      "Goblet Glass" => "icons/sniffer",
      "IPA Glass" => "icons/pint4",
      "Weizen Glass" => "icons/wheat",
      "Nonic pint" => "icons/pint2",
      "English pint" => "icons/pint2",
      "American pint" => "icons/pint4",
      "Snifter glass" => "icons/sniffer"
    }

    glasses[glassware]
  end
end
