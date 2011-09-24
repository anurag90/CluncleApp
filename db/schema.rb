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

ActiveRecord::Schema.define(:version => 20110923231018) do

  create_table "add_approvalflag_to_merchants", :force => true do |t|
    t.boolean  "Flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authentications", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "merchant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", :force => true do |t|
    t.string   "Name"
    t.string   "UserName"
    t.string   "RegistrationName"
    t.string   "BusinessName"
    t.string   "ContactPerson"
    t.string   "PhoneNumber"
    t.string   "Fax"
    t.string   "BusinessAdress"
    t.string   "Email"
    t.string   "Website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "Flag"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "stateField"
    t.string   "zipcode"
  end

  create_table "states", :force => true do |t|
    t.string   "stateName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
