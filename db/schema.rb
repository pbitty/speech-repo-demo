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

ActiveRecord::Schema.define(:version => 20120904044233) do

  create_table "accounts", :force => true do |t|
    t.string   "email",              :default => "", :null => false
    t.string   "encrypted_password", :default => "", :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "role"
  end

  add_index "accounts", ["email"], :name => "index_accounts_on_email", :unique => true

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "choices", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "choices", ["name", "type"], :name => "index_choices_on_name_and_type", :unique => true

  create_table "interpretations", :force => true do |t|
    t.integer  "speech_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "language_id"
    t.integer  "year_of_study_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

  create_table "speeches", :force => true do |t|
    t.string   "topic"
    t.text     "context"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "language_id"
    t.integer  "setting_id"
    t.integer  "difficulty_id"
    t.integer  "speed_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

end
