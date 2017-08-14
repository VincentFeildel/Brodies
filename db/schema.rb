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

ActiveRecord::Schema.define(version: 20170814165616) do

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "is_outdoor"
    t.string "category"
    t.integer "capacity"
    t.integer "user_id"
    t.string "address"
    t.integer "zip_code"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pricing_id"
    t.string "status"
    t.datetime "booking_start"
    t.datetime "booking_end"
    t.integer "price"
    t.integer "nb_persons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pricing_id"], name: "index_bookings_on_pricing_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "pricings", force: :cascade do |t|
    t.text "description"
    t.integer "amount"
    t.integer "activity_id"
    t.string "price_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_pricings_on_activity_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.boolean "is_supplier", default: false
    t.string "first_name"
    t.string "second_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
