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

ActiveRecord::Schema.define(version: 2021_05_18_075809) do

  create_table "calendars", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.string "rent_date"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["shop_id"], name: "index_calendars_on_shop_id"
    t.index ["user_id"], name: "index_calendars_on_user_id"
  end

  create_table "owners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "address"
    t.integer "tel"
    t.string "email"
    t.string "password_digest"
    t.integer "del_flg"
    t.string "remember_digest"
    t.index ["email"], name: "index_owners_on_email", unique: true
  end

  create_table "shops", force: :cascade do |t|
    t.string "prefecture"
    t.string "city"
    t.string "address"
    t.integer "tel"
    t.string "station"
    t.integer "capacity"
    t.string "image"
    t.integer "price"
    t.text "content"
    t.integer "del_flg"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "zip_code"
    t.string "start_time"
    t.string "end_time"
    t.text "business_time"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.integer "tel"
    t.string "email"
    t.string "password_digest"
    t.integer "del_flg"
    t.string "name"
    t.string "remember_digest"
    t.string "image"
    t.string "public_uid"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
