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

ActiveRecord::Schema.define(version: 20170612090117) do

  create_table "applicants", force: :cascade do |t|
    t.string "ap_code"
    t.string "ap_name"
    t.text "ap_addr"
    t.string "ap_sex"
    t.string "ap_ed"
    t.string "ap_maj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "pos_name"
    t.integer "applicant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_id"], name: "index_positions_on_applicant_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.text "qual_desc"
    t.integer "position_id"
    t.integer "applicant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_id"], name: "index_qualifications_on_applicant_id"
    t.index ["position_id"], name: "index_qualifications_on_position_id"
  end

end
