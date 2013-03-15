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

ActiveRecord::Schema.define(:version => 20130315184657) do

  create_table "status_connections", :id => false, :force => true do |t|
    t.integer "status_a_id", :null => false
    t.integer "status_b_id", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.text     "status"
    t.string   "geocode"
    t.string   "image_url"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "statuses", ["user_id"], :name => "index_statuses_on_user_id"

  create_table "statuses_tags", :id => false, :force => true do |t|
    t.integer "status_id"
    t.integer "tag_id"
  end

  add_index "statuses_tags", ["status_id", "tag_id"], :name => "index_statuses_tags_on_status_id_and_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "tag"
    t.integer  "statuses_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tags", ["statuses_id"], :name => "index_tags_on_statuses_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
