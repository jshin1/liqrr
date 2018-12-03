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

ActiveRecord::Schema.define(version: 2018_12_03_165803) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "occasion"
    t.string "i1"
    t.string "m1"
    t.string "i2"
    t.string "m2"
    t.string "i3"
    t.string "m3"
    t.string "i4"
    t.string "m4"
    t.string "i5"
    t.string "m5"
    t.string "i6"
    t.string "m6"
    t.string "i7"
    t.string "m7"
    t.string "i8"
    t.string "m8"
    t.string "i9"
    t.string "m9"
    t.string "i10"
    t.string "m10"
    t.string "category"
    t.text "instructions"
    t.string "glass"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
