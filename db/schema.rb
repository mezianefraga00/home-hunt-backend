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

ActiveRecord::Schema.define(version: 2021_09_30_102701) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone_nbr"
    t.string "login"
    t.string "password_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "home_type"
    t.string "surface"
    t.string "parking"
    t.string "heating"
    t.string "backyard"
    t.string "laundry"
    t.string "dishawasher"
    t.string "cooling"
    t.string "deal_type"
    t.string "nbr_bedroom"
    t.string "nbr_bathroom"
    t.string "pets_allowed"
    t.string "img_url"
    t.text "description"
    t.integer "owner_id", null: false
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_homes_on_location_id"
    t.index ["owner_id"], name: "index_homes_on_owner_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.integer "app_nbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "phone_nbr"
    t.string "login"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "date_request"
    t.string "price_agree"
    t.text "message"
    t.integer "client_id", null: false
    t.integer "home_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_requests_on_client_id"
    t.index ["home_id"], name: "index_requests_on_home_id"
  end

  add_foreign_key "homes", "locations"
  add_foreign_key "homes", "owners"
  add_foreign_key "requests", "clients"
  add_foreign_key "requests", "homes"
end
