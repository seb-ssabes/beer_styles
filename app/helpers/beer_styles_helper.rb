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
end
