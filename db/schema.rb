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

ActiveRecord::Schema.define(version: 2018_11_27_063048) do

  create_table "addresses", force: :cascade do |t|
    t.integer "rent_app_id"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "mngmt_phone"
    t.boolean "is_current"
    t.index ["rent_app_id"], name: "index_addresses_on_rent_app_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "number"
    t.boolean "availability"
    t.integer "building_id"
    t.index ["building_id"], name: "index_apartments_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "number"
    t.string "name"
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

  create_table "employers", force: :cascade do |t|
    t.integer "rent_app_id"
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "phone_num"
    t.string "income"
    t.index ["rent_app_id"], name: "index_employers_on_rent_app_id"
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

  create_table "rent_apps", force: :cascade do |t|
    t.integer "building_id"
    t.integer "user_id"
    t.integer "num_bed"
    t.integer "num_bath"
    t.string "ssn"
    t.string "dr_license_num"
    t.string "license_state"
    t.string "bank_name"
    t.string "bank_acct_num"
    t.string "res_phone"
    t.string "work_phone"
    t.text "names_of_occpts"
    t.string "pets"
    t.datetime "submitted_time"
    t.index ["user_id"], name: "index_rent_apps_on_user_id"
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
    t.integer "phonenumber"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "credit_card_id"
    t.string "curr_addr"
    t.string "provider"
    t.string "uid"
    t.boolean "admin", default: false
    t.index ["credit_card_id"], name: "index_users_on_credit_card_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
