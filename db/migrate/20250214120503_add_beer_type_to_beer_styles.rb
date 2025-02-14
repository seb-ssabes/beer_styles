class AddBeerTypeToBeerStyles < ActiveRecord::Migration[7.1]
  def change
    add_reference :beer_styles, :beer_type, null: true, foreign_key: true
  end
end
