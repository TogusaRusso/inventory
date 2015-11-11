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

ActiveRecord::Schema.define(version: 20151110123320) do

  create_table "documents", force: :cascade do |t|
    t.integer  "person_from"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "person_to"
    t.boolean  "checked"
  end

  add_index "documents", ["person_from"], name: "index_documents_on_person_from"
  add_index "documents", ["person_to"], name: "index_documents_on_person_to"

  create_table "items", force: :cascade do |t|
    t.string   "serial"
    t.string   "comment"
    t.integer  "position_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["position_id"], name: "index_items_on_position_id"

  create_table "movements", force: :cascade do |t|
    t.integer  "document_id"
    t.integer  "position_id"
    t.integer  "item_id"
    t.float    "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "movements", ["document_id"], name: "index_movements_on_document_id"
  add_index "movements", ["item_id"], name: "index_movements_on_item_id"
  add_index "movements", ["position_id"], name: "index_movements_on_position_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.boolean  "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
