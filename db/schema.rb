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

ActiveRecord::Schema.define(version: 20150727205845) do

  create_table "agencies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "cemeteries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "coffins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "funerals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "gathers", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "agency_id"
    t.integer  "coffin_id"
    t.integer  "cemetery_id"
    t.integer  "funeral_id"
    t.integer  "placeofdeath_id"
    t.string   "ncf"
    t.string   "healthcare"
    t.string   "deceased"
  end

  add_index "gathers", ["agency_id"], name: "index_gathers_on_agency_id"
  add_index "gathers", ["cemetery_id"], name: "index_gathers_on_cemetery_id"
  add_index "gathers", ["coffin_id"], name: "index_gathers_on_coffin_id"
  add_index "gathers", ["funeral_id"], name: "index_gathers_on_funeral_id"
  add_index "gathers", ["placeofdeath_id"], name: "index_gathers_on_placeofdeath_id"

  create_table "placeofdeaths", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

end
