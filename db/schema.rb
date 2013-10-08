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

ActiveRecord::Schema.define(version: 20131008210032) do

  create_table "clients", force: true do |t|
    t.string   "sizeup"
    t.integer  "sizedown"
    t.integer  "sizehoes"
    t.string   "IMEI"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clothings", force: true do |t|
    t.integer  "size"
    t.string   "uid"
    t.string   "brand"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cross_sellings", force: true do |t|
    t.integer  "nbr_advice_item"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entertainements", force: true do |t|
    t.integer  "waitingtime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gamings", force: true do |t|
    t.integer  "score"
    t.string   "urlgame"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "installation_data", force: true do |t|
    t.string   "objectId"
    t.string   "appName"
    t.string   "appVersion"
    t.integer  "badge"
    t.string   "deviceToken"
    t.string   "deviceType"
    t.string   "installationId"
    t.string   "parseVersion"
    t.string   "timeZone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "describe"
    t.string   "state"
    t.string   "reference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "paymentmode"
    t.integer  "validata"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "facebookappid"
    t.string   "description"
    t.string   "facebookappkey"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parse_data", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "authdata"
    t.string   "email"
    t.boolean  "emailverified"
    t.string   "ACL"
    t.string   "objectId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_data", force: true do |t|
    t.string   "cardnumber"
    t.string   "cardId"
    t.date     "expirationdata"
    t.string   "securitycode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferences", force: true do |t|
    t.string   "color"
    t.string   "brand"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "selections", force: true do |t|
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_data", force: true do |t|
    t.string   "facebookToken"
    t.string   "facebookSecret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.integer  "numberfittingroom"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vistits", force: true do |t|
    t.integer  "timeinstore"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
