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

ActiveRecord::Schema.define(version: 2018_07_03_183930) do

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.integer "idea_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idea_id"], name: "index_comments_on_idea_id"
  end

  create_table "ideas", force: :cascade do |t|
    t.string "idea_title"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "complete"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "display_name"
    t.string "user_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

end
