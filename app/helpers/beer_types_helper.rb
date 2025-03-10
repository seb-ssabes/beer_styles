module BeerTypesHelper
  ICONS = {
    "Pale Lager" => "icons/pint1",
    "Wheat Beer" => "icons/barley",
    "Pale Ale" => "icons/hops",
    "Amber Lager" => "icons/pint2",
    "Dark Lager" => "icons/pint3",
    "Pilsner" => "icons/schop",
    "Bock" => "icons/sniffer",
    "Amber Ale" => "icons/pint4",
    "Porter" => "icons/pint1",
    "IPA" => "icons/ipa2",
    "Brown Ale" => "icons/pint1",
    "Stout" => "icons/sniffer",
    "Strong Ale" => "icons/pint1",
    "Sour Ale" => "icons/sour",
  }

  def beer_type_icon(beer_type_name)
    ICONS[beer_type_name]
  end


end
