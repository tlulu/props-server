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

ActiveRecord::Schema.define(version: 20170402022949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Payments", force: :cascade do |t|
    t.integer  "recipient"
    t.float    "amount"
    t.string   "memo",      limit: 255
    t.integer  "user_id"
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
  end

  create_table "SequelizeMeta", primary_key: "name", force: :cascade do |t|
  end

  create_table "Users", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "email",             limit: 255
    t.datetime "createdAt",                     null: false
    t.datetime "updatedAt",                     null: false
    t.string   "major",             limit: 255, null: false
    t.string   "minor",             limit: 255, null: false
    t.string   "payment_client_id", limit: 255, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "role"
    t.integer  "major"
    t.integer  "minor"
    t.string   "payment_client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
