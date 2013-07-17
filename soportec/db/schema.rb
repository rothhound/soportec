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

ActiveRecord::Schema.define(:version => 20130716215323) do

  create_table "categories", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "computers", :force => true do |t|
    t.string   "ram"
    t.string   "processor"
    t.string   "motherboard"
    t.string   "display"
    t.string   "mouse"
    t.string   "keyboard"
    t.string   "videocard"
    t.integer  "laboratory_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "computers", ["laboratory_id"], :name => "index_computers_on_laboratory_id"

  create_table "courses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "eap_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "days", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "eaps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "laboratories", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "capacity"
    t.integer  "floor"
    t.integer  "numComputers"
    t.integer  "airConditioning"
    t.integer  "projector"
    t.integer  "sound"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "laboratories_softwares", :force => true do |t|
    t.integer  "laboratory_id"
    t.integer  "software_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "laboratories_softwares", ["laboratory_id"], :name => "index_laboratories_softwares_on_laboratory_id"
  add_index "laboratories_softwares", ["software_id"], :name => "index_laboratories_softwares_on_software_id"

  create_table "professors", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "lastname"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "professors", ["course_id"], :name => "index_professors_on_course_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.time     "start"
    t.time     "end"
    t.integer  "laboratory_id"
    t.integer  "course_id"
    t.integer  "day_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "schedules", ["course_id"], :name => "index_schedules_on_course_id"
  add_index "schedules", ["day_id"], :name => "index_schedules_on_day_id"
  add_index "schedules", ["laboratory_id"], :name => "index_schedules_on_laboratory_id"

  create_table "softwares", :force => true do |t|
    t.string   "name"
    t.string   "version"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "softwares", ["category_id"], :name => "index_softwares_on_category_id"

  create_table "states", :force => true do |t|
    t.string   "description"
    t.integer  "laboratory_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "states", ["laboratory_id"], :name => "index_states_on_laboratory_id"

  create_table "users", :force => true do |t|
    t.string   "code"
    t.string   "username"
    t.string   "name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.integer  "role_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
