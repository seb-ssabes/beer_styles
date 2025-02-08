class CreateBeerStyles < ActiveRecord::Migration[7.1]
  def change
    create_table :beer_styles do |t|
      t.string :type
      t.text :type_description
      t.string :name
      t.text :style_description
      t.string :ibu
      t.string :abv
      t.string :srm
      t.string :common_malts
      t.string :origin
      t.text :notes
      t.string :temperature
      t.string :glassware

      t.timestamps
    end
  end
end
