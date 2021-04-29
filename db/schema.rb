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

ActiveRecord::Schema.define(version: 2021_04_29_032740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "trade_types", force: :cascade do |t|
    t.integer "mode", null: false
    t.string "name", null: false
    t.integer "nature", null: false
    t.string "operator", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trades", force: :cascade do |t|
    t.bigint "trade_type_id", null: false
    t.date "trade_date", null: false
    t.float "amount", null: false
    t.string "cpf", null: false
    t.string "card_number", null: false
    t.string "time", null: false
    t.string "store_owner", null: false
    t.string "store_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trade_type_id"], name: "index_trades_on_trade_type_id"
  end

  add_foreign_key "trades", "trade_types"
end
