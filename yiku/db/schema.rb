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

ActiveRecord::Schema.define(:version => 20120911082230) do

  create_table "bottoms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "size"
    t.string   "material"
    t.string   "color"
    t.string   "image_url"
    t.string   "brand"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hats", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "size"
    t.string   "material"
    t.string   "color"
    t.string   "image_url"
    t.string   "brand"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "size"
    t.string   "material"
    t.string   "color"
    t.string   "image_url"
    t.string   "brand"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suit_attributes", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "suit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suits", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.integer  "owner_id"
    t.integer  "hat_id"
    t.integer  "top_id"
    t.integer  "bottom_id"
    t.integer  "shoes_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tops", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "size"
    t.string   "material"
    t.string   "color"
    t.string   "image_url"
    t.string   "brand"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_id"
    t.string   "nick_name"
    t.string   "password"
    t.string   "email"
    t.string   "mobile"
    t.string   "blog_url"
    t.string   "cur_place"
    t.string   "face_url"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
