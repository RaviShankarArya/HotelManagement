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

ActiveRecord::Schema.define(version: 20140917110231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "itemname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemtypes", force: true do |t|
    t.string   "itemtypename"
    t.integer  "amount"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itemtypes", ["category_id"], name: "index_itemtypes_on_category_id", using: :btree

  create_table "mainpages", force: true do |t|
    t.float    "total_amount"
    t.integer  "category_id"
    t.integer  "itemtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

  add_index "mainpages", ["category_id"], name: "index_mainpages_on_category_id", using: :btree
  add_index "mainpages", ["itemtype_id"], name: "index_mainpages_on_itemtype_id", using: :btree

end
