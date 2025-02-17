require 'csv'

class BeerType < ApplicationRecord
  has_many :beer_styles
  validates :name, presence: true, uniqueness: true

  def self.csv_descriptions_import
    filepath = Rails.root.join('db', 'beer_styles.csv')

    CSV.foreach(filepath, headers: true) do |row|
      beer_type = BeerType.find_or_create_by!(name: row['Beer Type'].strip)

      if beer_type && beer_type.description.blank?
        beer_type.update(description: row['Beer Type Description'])
      end
    end
  end
end
