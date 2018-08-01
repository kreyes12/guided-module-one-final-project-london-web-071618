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

ActiveRecord::Schema.define(version: 20180801092638) do

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.string   "publisher"
    t.integer  "number_of_pages"
    t.datetime "released"
    t.integer  "character_id"
    t.index ["character_id"], name: "index_books_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.string  "gender"
    t.string  "culture"
    t.string  "born"
    t.string  "died"
    t.string  "titles"
    t.string  "aliases"
    t.string  "father"
    t.string  "mother"
    t.string  "spouse"
    t.integer "house_id"
    t.integer "books_id"
    t.index ["books_id"], name: "index_characters_on_books_id"
    t.index ["house_id"], name: "index_characters_on_house_id"
  end

end
