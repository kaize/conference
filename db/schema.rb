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

ActiveRecord::Schema.define(version: 20130710081815) do

  create_table "halls", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "lectures", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "thesis"
  end

  create_table "slots", force: true do |t|
    t.integer  "hall_id"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lecture_id"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "city"
    t.string   "company"
    t.string   "position"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "state"
    t.boolean  "show_as_participant"
    t.boolean  "invisible_lector"
    t.string   "photo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
