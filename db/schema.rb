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

ActiveRecord::Schema.define(version: 20150206172546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_reciepts", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "speedboat_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sale_reciepts", ["customer_id"], name: "index_sale_reciepts_on_customer_id", using: :btree
  add_index "sale_reciepts", ["speedboat_id"], name: "index_sale_reciepts_on_speedboat_id", using: :btree

  create_table "speedboats", force: :cascade do |t|
    t.string   "brand"
    t.string   "model_number"
    t.string   "image_url"
    t.float    "wholesale_price"
    t.float    "retail_price"
    t.boolean  "in_stock"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "sale_reciepts", "customers"
  add_foreign_key "sale_reciepts", "speedboats"
end
