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

ActiveRecord::Schema.define(:version => 20140113234207) do

  create_table "comments", :force => true do |t|
    t.integer  "traveler_id"
    t.integer  "trip_id"
    t.string   "description_text"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "travelers", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "estimated_cost"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "travelers", ["email"], :name => "index_travelers_on_email", :unique => true
  add_index "travelers", ["reset_password_token"], :name => "index_travelers_on_reset_password_token", :unique => true

  create_table "trips", :force => true do |t|
    t.string   "destination"
    t.string   "origin"
    t.integer  "length_of_stay"
    t.boolean  "accomplished"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
