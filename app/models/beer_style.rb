require 'csv'

class BeerStyle < ApplicationRecord
  def self.csv_import
    filepath = Rails.root.join('db', 'beer_styles.csv')

    CSV.foreach(filepath, headers: true) do |row|
      BeerStyle.create!(
        beer_type: row['Beer Type'],
        type_description: row['Beer Type Description'],
        name: row['Beer Style'],
        style_description: row['Style Description'],
        ibu: row['IBU'],
        abv: row['ABV Range'],
        srm: row['SRM'],
        common_malts: row['Common Malts Used'],
        origin: row['Country of Origin'],
        notes: row['Aroma/Taste Notes'],
        temperature: row['Drinking Temperature'],
        glassware: row['Recommended Glassware']
      )
    end
  end
end
