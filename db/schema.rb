# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_02_14_120503) do
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
    t.integer "beer_type_id"
    t.index ["beer_type_id"], name: "index_beer_styles_on_beer_type_id"
  end

  create_table "beer_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beer_styles", "beer_types"
end
