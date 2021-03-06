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

ActiveRecord::Schema.define(version: 20170525151825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "request_items", force: :cascade do |t|
    t.string "item_name", default: "", null: false
    t.integer "request_id"
    t.text "description"
    t.string "access_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_request_items_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name_recipient", default: "", null: false
    t.string "last_name_recipient", default: "", null: false
    t.string "personal_email_recipient", default: "", null: false
    t.string "title_recipient", default: "", null: false
    t.string "program_recipient"
    t.string "division_recipient"
    t.text "request_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "password", limit: 40
    t.string "program", default: "", null: false
    t.string "division"
    t.string "title"
    t.string "phone_number"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
