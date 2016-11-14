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

ActiveRecord::Schema.define(version: 20161114091222) do

  create_table "boat_document_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "notes",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "boat_documents", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "notes",                 limit: 255
    t.integer  "boat_document_type_id", limit: 4,   null: false
    t.integer  "boat_id",               limit: 4,   null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "boat_documents", ["boat_document_type_id"], name: "index_boat_documents_on_boat_document_type_id", using: :btree
  add_index "boat_documents", ["boat_id"], name: "index_boat_documents_on_boat_id", using: :btree

  create_table "boats", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "mmsi",        limit: 255
    t.string   "horse_power", limit: 255
    t.integer  "seats",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "certification_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "notes",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "level",                 limit: 255
    t.string   "notes",                 limit: 255
    t.integer  "certification_type_id", limit: 4,   null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "certifications", ["certification_type_id"], name: "index_certifications_on_certification_type_id", using: :btree

  create_table "certifications_members", force: :cascade do |t|
    t.date     "begin_date"
    t.date     "end_date"
    t.string   "notes",             limit: 255
    t.integer  "certification_id",  limit: 4,   null: false
    t.integer  "members_client_id", limit: 4,   null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "certifications_members", ["certification_id"], name: "index_certifications_members_on_certification_id", using: :btree
  add_index "certifications_members", ["members_client_id"], name: "index_certifications_members_on_members_client_id", using: :btree

  create_table "dive_service_member_gears", force: :cascade do |t|
    t.string   "notes",                  limit: 255
    t.integer  "gear_id",                limit: 4,   null: false
    t.integer  "dive_service_member_id", limit: 4,   null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "dive_service_member_gears", ["dive_service_member_id"], name: "index_dive_service_member_gears_on_dive_service_member_id", using: :btree
  add_index "dive_service_member_gears", ["gear_id"], name: "index_dive_service_member_gears_on_gear_id", using: :btree

  create_table "dive_service_member_types", force: :cascade do |t|
    t.string   "description", limit: 255
    t.string   "notes",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "dive_service_members", force: :cascade do |t|
    t.float    "price",                       limit: 24
    t.boolean  "payed"
    t.string   "notes",                       limit: 255
    t.integer  "dive_service_spot_id",        limit: 4,   null: false
    t.integer  "dive_service_member_type_id", limit: 4,   null: false
    t.integer  "members_client_id",           limit: 4,   null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "dive_service_members", ["dive_service_member_type_id"], name: "index_dive_service_members_on_dive_service_member_type_id", using: :btree
  add_index "dive_service_members", ["dive_service_spot_id"], name: "index_dive_service_members_on_dive_service_spot_id", using: :btree
  add_index "dive_service_members", ["members_client_id"], name: "index_dive_service_members_on_members_client_id", using: :btree

  create_table "dive_service_spots", force: :cascade do |t|
    t.integer  "dive_service_id", limit: 4, null: false
    t.integer  "dive_spot_id",    limit: 4, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "dive_service_spots", ["dive_service_id"], name: "index_dive_service_spots_on_dive_service_id", using: :btree
  add_index "dive_service_spots", ["dive_spot_id"], name: "index_dive_service_spots_on_dive_spot_id", using: :btree

  create_table "dive_services", force: :cascade do |t|
    t.date     "date"
    t.string   "notes",      limit: 255
    t.integer  "boat_id",    limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "dive_services", ["boat_id"], name: "index_dive_services_on_boat_id", using: :btree

  create_table "dive_spots", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "max_depth",  limit: 4
    t.integer  "min_depth",  limit: 4
    t.string   "sea_life",   limit: 255
    t.string   "coordenads", limit: 255
    t.string   "notes",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "gear_sizes", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "gear_types", force: :cascade do |t|
    t.string   "description",    limit: 255
    t.string   "caracteristics", limit: 255
    t.float    "rental_price",   limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "gears", force: :cascade do |t|
    t.string   "reference",     limit: 255
    t.date     "purchase_date"
    t.date     "sell_date"
    t.string   "notes",         limit: 255
    t.integer  "gear_type_id",  limit: 4,   null: false
    t.integer  "gear_size_id",  limit: 4,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "gears", ["gear_size_id"], name: "index_gears_on_gear_size_id", using: :btree
  add_index "gears", ["gear_type_id"], name: "index_gears_on_gear_type_id", using: :btree

  create_table "members_clients", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "telephone",   limit: 255
    t.date     "birth_date"
    t.string   "mail",        limit: 255
    t.string   "facebook",    limit: 255
    t.integer  "total_dives", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "boat_documents", "boat_document_types"
  add_foreign_key "boat_documents", "boats"
  add_foreign_key "certifications", "certification_types"
  add_foreign_key "certifications_members", "certifications"
  add_foreign_key "certifications_members", "members_clients"
  add_foreign_key "dive_service_member_gears", "dive_service_members"
  add_foreign_key "dive_service_member_gears", "gears"
  add_foreign_key "dive_service_members", "dive_service_member_types"
  add_foreign_key "dive_service_members", "dive_service_spots"
  add_foreign_key "dive_service_members", "members_clients"
  add_foreign_key "dive_service_spots", "dive_services"
  add_foreign_key "dive_service_spots", "dive_spots"
  add_foreign_key "dive_services", "boats"
  add_foreign_key "gears", "gear_sizes"
  add_foreign_key "gears", "gear_types"
end
