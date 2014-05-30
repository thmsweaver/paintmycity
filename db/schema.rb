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

ActiveRecord::Schema.define(version: 20140530030319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "entry"
    t.integer  "composition_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compositions", force: true do |t|
    t.string  "title"
    t.decimal "latitude"
    t.decimal "longitude"
    t.integer "user_id"
    t.text    "image_url"
    t.boolean "gmaps"
    t.string  "location",  default: "Washington, DC"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_token"
    t.text   "profile_picture", default: "http://www.clker.com/cliparts/4/p/3/I/V/d/large-man-woman-bathroom-sign.svg"
    t.text   "profile",         default: "graffiti is one of the few tools you have if you have almost nothing. And even if you don't come up with a picture to cure world poverty you can make someone smile while they're having a piss."
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
