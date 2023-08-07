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

ActiveRecord::Schema[7.0].define(version: 2023_08_07_063406) do
  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.integer "age"
    t.integer "user_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "product_id", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "customer_name"
    t.integer "order_id"
    t.integer "discount"
    t.integer "total_value"
    t.date "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "part_number"
    t.decimal "price"
    t.integer "user_id", null: false
    t.string "product_name"
    t.index ["part_number"], name: "index_products_on_part_number"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.integer "age"
    t.integer "phone_no"
    t.string "login"
  end

  add_foreign_key "articles", "users"
  add_foreign_key "products", "users"
end
