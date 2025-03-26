module BeerTypesHelper
  ICONS = {
    "Pale Lager" => "beer_styles/pint1",
    "Wheat Beer" => "beer_styles/barley",
    "Pale Ale" => "beer_styles/hops",
    "Amber Lager" => "beer_styles/pint2",
    "Dark Lager" => "beer_styles/pint3",
    "Pilsner" => "beer_styles/pilsner",
    "Bock" => "beer_styles/sniffer",
    "Amber Ale" => "beer_styles/pint4",
    "Porter" => "beer_styles/pint1",
    "IPA" => "beer_styles/ipa2",
    "Brown Ale" => "beer_styles/pint1",
    "Stout" => "beer_styles/sniffer",
    "Strong Ale" => "beer_styles/pint1",
    "Sour Ale" => "beer_styles/sour",
  }

  def beer_type_icon(beer_type_name)
    ICONS[beer_type_name]
  end

end
