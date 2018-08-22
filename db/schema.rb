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

ActiveRecord::Schema.define(version: 2018_08_21_154145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "watch_id"
    t.date "booking_start_date"
    t.date "booking_end_date"
    t.integer "booking_price"
    t.string "status"
    t.bigint "owner_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["owner_id"], name: "index_bookings_on_owner_id"
    t.index ["watch_id"], name: "index_bookings_on_watch_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "message"
    t.bigint "booking_id"
    t.bigint "owner_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_messages_on_booking_id"
    t.index ["customer_id"], name: "index_messages_on_customer_id"
    t.index ["owner_id"], name: "index_messages_on_owner_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.integer "rating"
    t.bigint "owner_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booking_id"
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
    t.index ["owner_id"], name: "index_reviews_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.text "description"
    t.boolean "super_user"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watches", force: :cascade do |t|
    t.string "photo"
    t.date "production_year"
    t.string "brand"
    t.string "model"
    t.integer "price_per_day"
    t.string "gender"
    t.text "description"
    t.string "color"
    t.string "mechanism"
    t.string "case_material"
    t.string "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_watches_on_user_id"
  end

  add_foreign_key "bookings", "users", column: "customer_id"
  add_foreign_key "bookings", "users", column: "owner_id"
  add_foreign_key "bookings", "watches"
  add_foreign_key "messages", "bookings"
  add_foreign_key "messages", "users", column: "customer_id"
  add_foreign_key "messages", "users", column: "owner_id"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users", column: "customer_id"
  add_foreign_key "reviews", "users", column: "owner_id"
  add_foreign_key "watches", "users"
end
