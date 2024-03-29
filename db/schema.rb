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

ActiveRecord::Schema.define(version: 20170717020003) do

  create_table "bills", force: :cascade do |t|
    t.string   "client"
    t.string   "description"
    t.date     "due"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zip"
    t.string   "phone"
    t.integer  "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "state"
    t.index ["bill_id"], name: "index_customers_on_bill_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "bill_id"
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bill_id"], name: "index_items_on_bill_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
