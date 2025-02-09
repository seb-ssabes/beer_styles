ActiveRecord::Schema[7.1].define(version: 2025_02_09_130756) do
  create_table "beer_styles", force: :cascade do |t|
    t.string "beer_type"
    t.text "type_description"
    t.string "name"
    t.text "style_description"
    t.string "ibu"
    t.string "abv"
    t.string "srm"
    t.string "common_malts"
    t.string "origin"
    t.text "notes"
    t.string "temperature"
    t.string "glassware"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
