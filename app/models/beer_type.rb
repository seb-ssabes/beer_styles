class BeerType < ApplicationRecord
  has_many :beer_styles
  validates :name, presence: true, uniqueness: true
end
