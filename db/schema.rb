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

ActiveRecord::Schema.define(version: 20170627103802) do

  create_table "bags", force: :cascade do |t|
    t.integer  "code_id"
    t.integer  "colour_id"
    t.decimal  "price",      precision: 10, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["code_id"], name: "index_bags_on_code_id"
    t.index ["colour_id"], name: "index_bags_on_colour_id"
  end

  create_table "codes", force: :cascade do |t|
    t.string   "code",                           null: false
    t.text     "description", limit: 2147483647
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["code"], name: "index_codes_on_code", unique: true
  end

  create_table "colours", force: :cascade do |t|
    t.string   "colour",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colour"], name: "index_colours_on_colour", unique: true
    t.index ["colour"], name: "index_colours_on_name", unique: true
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "bag_id"
    t.decimal  "price",      precision: 10, scale: 2
    t.date     "date"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["bag_id"], name: "index_sales_on_bag_id"
  end

  add_foreign_key "bags", "codes"
  add_foreign_key "bags", "colours"
  add_foreign_key "sales", "bags"
end
