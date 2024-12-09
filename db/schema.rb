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

ActiveRecord::Schema[8.0].define(version: 2024_12_09_122549) do
  create_table "burgers", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "french_fries", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "burger_id"
    t.integer "french_fry_id"
    t.integer "drink_id"
    t.index ["burger_id"], name: "index_meal_orders_on_burger_id"
    t.index ["drink_id"], name: "index_meal_orders_on_drink_id"
    t.index ["french_fry_id"], name: "index_meal_orders_on_french_fry_id"
  end

  add_foreign_key "meal_orders", "burgers"
  add_foreign_key "meal_orders", "drinks"
  add_foreign_key "meal_orders", "french_fries"
end
