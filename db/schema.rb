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

ActiveRecord::Schema[7.0].define(version: 2022_06_22_065945) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flags", force: :cascade do |t|
    t.decimal "price"
    t.string "country"
    t.string "country_code"
    t.string "currency_code"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "phone"
    t.text "shipping_address"
    t.bigint "flag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flag_id"], name: "index_orders_on_flag_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.string "card_cvv"
    t.string "card_expiry_month"
    t.string "card_expiry_year"
    t.string "card_name"
    t.string "card_number"
    t.string "currency"
    t.string "medium"
    t.string "processor"
    t.string "status"
    t.bigint "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  add_foreign_key "orders", "flags"
  add_foreign_key "payments", "orders"
end
