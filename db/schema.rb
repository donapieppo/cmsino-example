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

ActiveRecord::Schema.define(version: 20170612144412) do

  create_table "cmsino_contents", force: :cascade do |t|
    t.string "umbrella"
    t.string "name"
    t.string "locale"
    t.string "title"
    t.text "text"
    t.text "excerpt"
    t.datetime "date"
    t.datetime "from"
    t.datetime "to"
    t.string "status"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cmsino_media", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attach_file_name"
    t.string "attach_content_type"
    t.integer "attach_file_size"
    t.datetime "attach_updated_at"
  end

  create_table "cmsino_media_uses", force: :cascade do |t|
    t.integer "cmsino_content_id"
    t.integer "cmsino_medium_id"
  end

  create_table "cmsino_terms", force: :cascade do |t|
    t.string "name"
    t.string "locale"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
