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

ActiveRecord::Schema.define(version: 20150909084139) do

  create_table "kanri_daicho", force: true do |t|
    t.string "toiawase_id",  limit: 32
    t.string "google_id",    limit: 128
    t.date   "birthday"
    t.string "prefecture",   limit: 128
    t.string "kasetsu_name", limit: 128
    t.string "tel_number",   limit: 16
  end

  create_table "logins", id: false, force: true do |t|
    t.datetime "login_datetime",                          null: false
    t.string   "google_id",      limit: 128, default: "", null: false
  end

  add_index "logins", ["google_id"], name: "google_id", using: :btree

  create_table "mdm_app_logs", id: false, force: true do |t|
    t.string  "tel_number",      limit: 32,  default: "", null: false
    t.string  "serial_number",   limit: 64,  default: "", null: false
    t.string  "name",            limit: 64,  default: "", null: false
    t.integer "member_id"
    t.integer "section1_name"
    t.integer "section2_name"
    t.integer "section3_name"
    t.integer "section4_name"
    t.integer "arb1"
    t.integer "arb2"
    t.integer "arb3"
    t.integer "arb4"
    t.string  "device_name",     limit: 128
    t.string  "imei",            limit: 128
    t.string  "os_version",      limit: 32
    t.string  "app_name",        limit: 128
    t.string  "app_version",     limit: 32
    t.string  "package_name",    limit: 128, default: "", null: false
    t.boolean "is_preinstalled"
    t.integer "invoke_count"
  end

  create_table "mdm_logs", force: true do |t|
    t.datetime "extracted_date"
    t.string   "tel_number",        limit: 16
    t.string   "user_name",         limit: 64
    t.datetime "device_updated_at"
    t.string   "model_name",        limit: 64
    t.string   "os_version",        limit: 16, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mdm_logs", ["extracted_date", "user_name"], name: "extracted_date", unique: true, using: :btree

  create_table "seminar_attendees", force: true do |t|
    t.date   "seminar_date"
    t.string "seminar_place", limit: 64
    t.string "toiawase_id",   limit: 32
  end

  create_table "softbank_app_usage", force: true do |t|
    t.date    "shipped_date"
    t.string  "tel_number",                limit: 32
    t.string  "toiawase_id",               limit: 32
    t.string  "imei",                      limit: 64
    t.integer "invoke_count"
    t.integer "packet_usage_201502"
    t.integer "packet_usage_201503"
    t.integer "packet_usage_201504"
    t.integer "packet_usage_201505"
    t.integer "packet_usage_201506"
    t.integer "packet_usage_201507"
    t.date    "pattern_file_updated_date"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
