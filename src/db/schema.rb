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

ActiveRecord::Schema.define(version: 2019_03_24_175637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "car_brands", force: :cascade do |t|
    t.string "code", limit: 5
    t.string "name", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string "name", limit: 20
    t.integer "quantity_of_seat"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "car_brand_id"
    t.index ["car_brand_id"], name: "index_car_models_on_car_brand_id"
  end

  create_table "car_rental_contracts", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.boolean "rent_driver"
    t.decimal "price"
    t.string "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "car_number_plate", limit: 15
    t.decimal "origin_price", precision: 5, scale: 2
    t.string "status"
    t.decimal "rental_price", precision: 5, scale: 2
    t.boolean "rent_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "car_model_id"
    t.index ["car_model_id"], name: "index_cars_on_car_model_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "type"
    t.date "start_date"
    t.date "end_date"
    t.decimal "price", precision: 10, scale: 2
    t.decimal "discount", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "license_no"
    t.string "class_license"
    t.date "date_issue"
    t.date "date_expired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investment_contracts", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.float "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_lists", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rented_cars", force: :cascade do |t|
    t.bigint "car_id"
    t.bigint "car_rental_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_rented_cars_on_car_id"
    t.index ["car_rental_id"], name: "index_rented_cars_on_car_rental_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.date "dob"
    t.string "address"
    t.string "tel"
    t.string "identity_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "license_no"
    t.string "class_license"
    t.date "date_issue"
    t.date "date_expired"
    t.string "type"
  end

end
