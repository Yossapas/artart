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

ActiveRecord::Schema.define(:version => 20101006103147) do

  create_table "hotel_features", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotel_featurings", :force => true do |t|
    t.integer  "hotel_id"
    t.integer  "hotel_feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", :force => true do |t|
    t.string   "name"
    t.integer  "star"
    t.text     "description"
    t.text     "detail"
    t.string   "address"
    t.string   "website"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_available_dates", :force => true do |t|
    t.integer  "room_id"
    t.date     "begin_at"
    t.date     "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_type_features", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_type_featurings", :force => true do |t|
    t.integer  "room_type_id"
    t.integer  "room_type_feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.decimal  "price"
    t.integer  "room_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
