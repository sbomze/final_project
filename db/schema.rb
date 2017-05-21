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

ActiveRecord::Schema.define(version: 20170521041933) do

  create_table "actors", force: :cascade do |t|
    t.string   "dob"
    t.string   "name"
    t.text     "bio"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charities", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "mission"
    t.float    "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "dob"
    t.string   "name"
    t.text     "bio"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "charity_id"
    t.float    "amount"
    t.string   "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "year"
    t.integer  "duration"
    t.text     "description"
    t.string   "image_url"
    t.integer  "director_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "character_name"
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email"
    t.integer  "zip_code"
    t.string   "address"
    t.string   "address_2"
    t.string   "city"
    t.string   "state_province"
    t.string   "country"
    t.string   "card_number"
    t.string   "expiration_date"
    t.integer  "security_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password"
  end

end
