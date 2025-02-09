class RenameTypeColumnInBeerStyles < ActiveRecord::Migration[7.1]
  def change
    rename_column :beer_styles, :type, :beer_type
  end
end
