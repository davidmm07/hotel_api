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

ActiveRecord::Schema.define(version: 2018_09_02_033710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "membership_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["membership_id"], name: "index_guests_on_membership_id"
  end

  create_table "hosted_ats", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "occupied_room_id"
    t.bigint "item_id"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_hosted_ats_on_guest_id"
    t.index ["item_id"], name: "index_hosted_ats_on_item_id"
    t.index ["occupied_room_id"], name: "index_hosted_ats_on_occupied_room_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string "name"
    t.integer "tier"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupied_rooms", force: :cascade do |t|
    t.datetime "check_in"
    t.datetime "check_out"
    t.bigint "room_id"
    t.bigint "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_occupied_rooms_on_reservation_id"
    t.index ["room_id"], name: "index_occupied_rooms_on_room_id"
  end

  create_table "periods", force: :cascade do |t|
    t.integer "day"
    t.integer "month"
    t.integer "year"
    t.integer "weekday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.bigint "period_id"
    t.bigint "room_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["period_id"], name: "index_rates_on_period_id"
    t.index ["room_id"], name: "index_rates_on_room_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date_in"
    t.date "date_out"
    t.bigint "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level_room_type"
    t.string "description"
    t.integer "max_capacity"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_room"
    t.string "name_room"
    t.string "description"
    t.bigint "room_type_id"
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
  end

  add_foreign_key "hosted_ats", "guests"
  add_foreign_key "hosted_ats", "items"
  add_foreign_key "hosted_ats", "occupied_rooms"
  add_foreign_key "occupied_rooms", "reservations"
  add_foreign_key "occupied_rooms", "rooms"
  add_foreign_key "rates", "periods"
  add_foreign_key "rates", "rooms"
  add_foreign_key "reservations", "guests"
  add_foreign_key "rooms", "room_types"
end
