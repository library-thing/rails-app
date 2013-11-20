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

ActiveRecord::Schema.define(version: 20131120163132) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
    t.integer  "library_id"
    t.boolean  "available"
  end

  create_table "libraries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "library_books", force: true do |t|
    t.integer "library_id"
    t.integer "book_id"
    t.boolean "available"
  end

  add_index "library_books", ["book_id"], name: "index_library_books_on_book_id"
  add_index "library_books", ["library_id"], name: "index_library_books_on_library_id"

  create_table "mains", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_books", force: true do |t|
    t.datetime "checkout_date"
    t.integer  "book_id"
    t.integer  "student_id"
    t.integer  "library_id"
  end

  add_index "student_books", ["book_id"], name: "index_student_books_on_book_id"
  add_index "student_books", ["library_id"], name: "index_student_books_on_library_id"
  add_index "student_books", ["student_id"], name: "index_student_books_on_student_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
