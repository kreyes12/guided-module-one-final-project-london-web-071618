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

ActiveRecord::Schema.define(version: 20180803103324) do

  create_table "book_characters", force: :cascade do |t|
    t.integer "book_id"
    t.integer "character_id"
  end

  create_table "books", force: :cascade do |t|
    t.string   "url"
    t.string   "name"
    t.string   "isbn"
    t.integer  "number_of_pages"
    t.string   "publisher"
    t.string   "country"
    t.string   "mediatype"
    t.datetime "released"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "url"
    t.string  "name"
    t.string  "gender"
    t.string  "culture"
    t.string  "born"
    t.string  "died"
    t.string  "father"
    t.string  "mother"
    t.string  "spouse"
    t.string  "actor"
    t.string  "tv_season"
    t.integer "house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "region"
    t.string "coat_of_arms"
    t.string "motto"
    t.string "current_lord"
    t.string "heir"
    t.string "overlord"
    t.string "founded"
    t.string "founder"
    t.string "extinct"
  end

end
