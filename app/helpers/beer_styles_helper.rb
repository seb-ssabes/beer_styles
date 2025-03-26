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

    "#{glasses[glassware]}.svg"
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
