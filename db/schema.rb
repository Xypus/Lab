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

ActiveRecord::Schema.define(version: 20140901103639) do

  create_table "cultures", force: true do |t|
    t.string   "starting_date"
    t.string   "termination_date"
    t.text     "culture_details"
    t.string   "schema_1"
    t.string   "schema_2"
    t.string   "schema_3"
    t.string   "schema_4"
    t.string   "schema_5"
    t.string   "schema_6"
    t.string   "schema_7"
    t.string   "schema_8"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mice", force: true do |t|
    t.integer  "number"
    t.string   "mating_date"
    t.string   "dpc"
    t.string   "somites"
    t.string   "experiments"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stainings", force: true do |t|
    t.string   "foetus"
    t.string   "staining_date"
    t.string   "schema_1"
    t.string   "schema_2"
    t.string   "schema_3"
    t.string   "schema_4"
    t.string   "schema_5"
    t.string   "schema_6"
    t.string   "schema_7"
    t.string   "schema_8"
    t.string   "antibodies"
    t.text     "staining_protocol"
    t.string   "results"
    t.string   "results_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
