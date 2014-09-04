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

ActiveRecord::Schema.define(version: 20140904131130) do

  create_table "cultures", force: true do |t|
    t.string   "starting_date"
    t.string   "termination_date"
    t.text     "culture_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mice", force: true do |t|
    t.integer  "number"
    t.string   "mating_date"
    t.decimal  "dpc"
    t.integer  "somites",     limit: 255
    t.string   "experiments"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "culture_id"
  end

  create_table "mouse_stainings", force: true do |t|
    t.integer  "mouse_id"
    t.integer  "staining_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mouse_stainings", ["mouse_id"], name: "index_mouse_stainings_on_mouse_id"
  add_index "mouse_stainings", ["staining_id"], name: "index_mouse_stainings_on_staining_id"

  create_table "plates", force: true do |t|
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "p6"
    t.string   "p7"
    t.string   "p8"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plateable_id"
    t.string   "plateable_type"
  end

  create_table "protocols", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stainings", force: true do |t|
    t.string   "foetus"
    t.string   "staining_date"
    t.string   "antibodies"
    t.text     "staining_protocol"
    t.string   "results"
    t.string   "results_file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "material_preparation"
    t.integer  "protocol_id"
    t.integer  "culture_id"
    t.text     "protocol_text"
  end

end
