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

ActiveRecord::Schema.define(:version => 20120607221326) do

  create_table "attendances", :force => true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "google_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "where"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "content"
    t.string   "lat"
    t.string   "lng"
    t.boolean  "public",     :default => true
    t.integer  "office_id"
  end

  create_table "learnings", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "title"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.text     "personal_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "office_id"
    t.string   "locale"
  end

  create_table "workouts", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
