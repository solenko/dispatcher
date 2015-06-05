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

ActiveRecord::Schema.define(version: 20150320140006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "cargos", force: true do |t|
    t.date     "ship_from_date"
    t.date     "ship_till_date"
    t.string   "ship_city"
    t.string   "ship_to_city"
    t.text     "description"
    t.string   "transport_type"
    t.float    "weight"
    t.float    "volume"
    t.string   "payment_type"
    t.integer  "payment_amount"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "company_name"
    t.string   "company_type"
    t.boolean  "order_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "distance"
  end

  create_table "transports", force: true do |t|
    t.date     "transport_from_date"
    t.date     "transport_till_date"
    t.string   "transport_city"
    t.string   "transport_to_city"
    t.string   "transport_type"
    t.float    "capacity"
    t.float    "volume"
    t.string   "payment_type"
    t.integer  "payment_amount"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "company_name"
    t.string   "company_type"
    t.boolean  "order_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "distance"
  end

end
