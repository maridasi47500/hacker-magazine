# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_21_113539) do
  create_table "hackpics", force: :cascade do |t|
    t.integer "myhack_id"
    t.integer "mypic_id"
    t.integer "myorder"
  end

  create_table "hackscripts", force: :cascade do |t|
    t.integer "myhack_id"
    t.integer "myscript_id"
    t.integer "myorder"
  end

  create_table "myhacks", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "subtitle"
  end

  create_table "mypics", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "myscripts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "programminglanguage_id"
    t.text "print"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "myhack_id"
    t.integer "user_id"
    t.integer "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programminglanguages", force: :cascade do |t|
    t.string "name"
    t.text "myprogram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
