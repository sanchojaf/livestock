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

ActiveRecord::Schema.define(version: 20140427131414) do

  create_table "livestocks", force: true do |t|
    t.string   "name"
    t.date     "day_of_birth"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurements", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "period_milk_productions", force: true do |t|
    t.date     "date_first_milking"
    t.integer  "livestock_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "period_milk_productions", ["livestock_id"], name: "index_period_milk_productions_on_livestock_id"

  create_table "pregnancies", force: true do |t|
    t.boolean  "artificial_insemination"
    t.date     "riding_date"
    t.date     "expected_birth_date"
    t.date     "birth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
