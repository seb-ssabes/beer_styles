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
      "Caribbean" => "🇯🇲🇵🇷🇩🇴",
      "Africa, Caribbean" => "🇯🇲🇵🇷🇩🇴",
      "Global" => "🌐",
      "Various" => "🌐"
    }

    mapping[country] || "un"
  end

  def beer_glass(glassware)
    glasses = {
      "Pilsner glass" => "beer_styles/pilsner",
      "Stein or Mug" => "beer_styles/schop",
      "Weizen glass" => "beer_styles/wheat",
      "Weizenbock glass" => "beer_styles/wheat",
      "Tulip glass" => "beer_styles/pilsner",
      "Pint glass" => "beer_styles/pint3",
      "Stein glass" => "beer_styles/schop",
      "Pint Glass" => "beer_styles/pint3",
      "Tulip Glass" => "beer_styles/pilsner",
      "Goblet Glass" => "beer_styles/sniffer",
      "IPA Glass" => "beer_styles/pint4",
      "Weizen Glass" => "beer_styles/wheat",
      "Nonic pint" => "beer_styles/pint2",
      "English pint" => "beer_styles/pint2",
      "American pint" => "beer_styles/pint4",
      "Snifter glass" => "beer_styles/sniffer"
    }

    glasses[glassware]
  end

  def srm_color(srm)
    range_start, range_end = srm.split('-').map(&:to_i)
    srm_value = (range_start + range_end) / 2

    case srm_value
    when 1..5
      "text-amber-200"
    when 6..10
      "text-amber-400"
    when 11..16
      "text-amber-600"
    when 17..25
      "text-amber-800"
    when 26..31
      "text-amber-900"
    when 32..100
      "text-amber-950"
    end
  end
end
