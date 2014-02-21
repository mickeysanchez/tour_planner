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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140221141052) do

  create_table "band_memberships", :force => true do |t|
    t.integer  "member_id",                     :null => false
    t.integer  "band_id",                       :null => false
    t.string   "role"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "admin",      :default => false, :null => false
  end

  add_index "band_memberships", ["band_id", "member_id"], :name => "index_band_memberships_on_band_id_and_member_id", :unique => true
  add_index "band_memberships", ["band_id"], :name => "index_band_memberships_on_band_id"
  add_index "band_memberships", ["member_id"], :name => "index_band_memberships_on_member_id"

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "band_id"
    t.integer  "venue_id"
    t.datetime "date"
    t.integer  "tour_id"
    t.string   "poster_file_name"
    t.string   "poster_content_type"
    t.integer  "poster_file_size"
    t.datetime "poster_updated_at"
  end

  add_index "events", ["band_id"], :name => "index_events_on_band_id"
  add_index "events", ["date"], :name => "index_events_on_date"
  add_index "events", ["venue_id"], :name => "index_events_on_venue_id"

  create_table "member_requests", :force => true do |t|
    t.integer  "requester_id",                        :null => false
    t.integer  "band_id",                             :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "status",       :default => "pending", :null => false
  end

  add_index "member_requests", ["band_id"], :name => "index_member_requests_on_band_id"
  add_index "member_requests", ["requester_id"], :name => "index_member_requests_on_requester_id"

  create_table "tours", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tours", ["name"], :name => "index_tours_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",              :null => false
    t.string   "password_digest",    :null => false
    t.string   "token"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["password_digest"], :name => "index_users_on_password_digest"
  add_index "users", ["token"], :name => "index_users_on_token", :unique => true

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.float    "lat"
    t.float    "lon"
  end

  add_index "venues", ["lat"], :name => "index_venues_on_lat"
  add_index "venues", ["lon"], :name => "index_venues_on_lon"

end
