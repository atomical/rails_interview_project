# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150114143826) do

  create_table "bookings", force: true do |t|
    t.string   "customer_name"
    t.string   "plate_number"
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.decimal  "price_per_hour"
  end

  add_index "bookings", ["listing_id"], name: "index_bookings_on_listing_id"

  create_table "listings", force: true do |t|
    t.string   "seller_name"
    t.string   "location_name"
    t.string   "address"
    t.string   "city"
    t.integer  "available"
    t.boolean  "active"
    t.integer  "min_parking_hours"
    t.decimal  "price_per_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.integer  "seller_id"
  end

  add_index "listings", ["location_id"], name: "index_listings_on_location_id"
  add_index "listings", ["seller_id"], name: "index_listings_on_seller_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
