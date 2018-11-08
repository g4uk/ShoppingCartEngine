# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_08_180908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shopping_cart_addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "country"
    t.string "city"
    t.string "zip"
    t.string "phone"
    t.string "type"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shopping_cart_addresses_on_order_id"
  end

  create_table "shopping_cart_carts", force: :cascade do |t|
    t.string "coupon_code"
    t.decimal "coupon_price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_coupons", force: :cascade do |t|
    t.string "code", null: false
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_credit_cards", force: :cascade do |t|
    t.string "number"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shopping_cart_credit_cards_on_order_id"
  end

  create_table "shopping_cart_deliveries", force: :cascade do |t|
    t.string "name", null: false
    t.string "duration", null: false
    t.decimal "price", precision: 6, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_order_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "quantity", default: 1, null: false
    t.string "product_name"
    t.decimal "product_price", precision: 8, scale: 2
    t.decimal "total", precision: 8, scale: 2
    t.integer "itemable_id"
    t.integer "integer"
    t.string "itemable_type"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itemable_id", "itemable_type"], name: "order_items_on_on_itemable_id_and_itemable_type", unique: true
    t.index ["product_id"], name: "index_shopping_cart_order_items_on_product_id"
  end

  create_table "shopping_cart_orders", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "total", precision: 8, scale: 2
    t.string "delivery_type"
    t.decimal "delivery_price", precision: 8, scale: 2
    t.string "delivery_duration"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_cart_orders_on_user_id"
  end

end
