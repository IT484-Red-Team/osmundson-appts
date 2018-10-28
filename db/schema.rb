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

ActiveRecord::Schema.define(version: 2018_10_27_202351) do

  create_table "apartments", force: :cascade do |t|
    t.string "number"
    t.boolean "availability"
    t.integer "building_id"
    t.index ["building_id"], name: "index_apartments_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "number"
    t.string "street_addr"
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_buildings_on_owner_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer "number"
    t.date "date"
    t.string "name"
    t.integer "cvc_number"
  end

  create_table "maintenance_requests", force: :cascade do |t|
    t.text "description"
    t.integer "maintenance_type_id"
    t.integer "renter_id"
    t.integer "request_status_id"
    t.index ["maintenance_type_id"], name: "index_maintenance_requests_on_maintenance_type_id"
    t.index ["renter_id"], name: "index_maintenance_requests_on_renter_id"
    t.index ["request_status_id"], name: "index_maintenance_requests_on_request_status_id"
  end

  create_table "maintenance_types", force: :cascade do |t|
    t.text "description"
  end

  create_table "owners", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
  end

  create_table "renters", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.integer "apartment_id"
    t.integer "room_id"
    t.index ["apartment_id"], name: "index_renters_on_apartment_id"
    t.index ["room_id"], name: "index_renters_on_room_id"
  end

  create_table "request_statuses", force: :cascade do |t|
    t.text "description"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "number"
    t.boolean "availability"
    t.integer "apartment_id"
    t.index ["apartment_id"], name: "index_rooms_on_apartment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "prev_addr"
    t.string "curr_addr"
    t.string "username"
    t.string "password"
    t.integer "credit_card_id"
    t.index ["credit_card_id"], name: "index_users_on_credit_card_id"
  end

end
