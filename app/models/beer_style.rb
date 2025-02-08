require 'csv'

class BeerStyle < ApplicationRecord
  def self.load_data
    filepath = Rails.root.join('db', 'beer_styles.csv')
    beer_styles = []

    CSV.foreach(filepath, headers: true) do |row|
      beer_styles << {
        type: row['Beer Type'],
        type_description: row['Beer Type Description'],
        name: row['Beer Style'],
        style_description: row['Style Description'],
        ibu: row['IBU'],
        abv: row['ABV'],
        srm: row['SRM'],
        common_malts: row['Common Malts Used'],
      }
    end

    beer_styles
  end
end
