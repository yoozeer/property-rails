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

ActiveRecord::Schema.define(version: 20160208184415) do

  create_table "agents", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 50,             null: false
    t.integer  "status",     limit: 4,  default: 1, null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "agents", ["user_id"], name: "index_agents_on_user_id", using: :btree

  create_table "ages", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "assets", force: :cascade do |t|
    t.integer  "listing_id",          limit: 4
    t.integer  "media_type_id",       limit: 4
    t.string   "upload_file_name",    limit: 255
    t.string   "upload_content_type", limit: 255
    t.integer  "upload_file_size",    limit: 4
    t.datetime "upload_updated_at"
    t.integer  "status",              limit: 4,   default: 1, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "assets", ["listing_id"], name: "index_assets_on_listing_id", using: :btree
  add_index "assets", ["media_type_id"], name: "index_assets_on_media_type_id", using: :btree

  create_table "availabilities", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "branches", force: :cascade do |t|
    t.integer  "agent_id",        limit: 4
    t.string   "name",            limit: 50,                                       null: false
    t.string   "address_1",       limit: 50,                                       null: false
    t.string   "address_2",       limit: 50
    t.string   "address_3",       limit: 50
    t.string   "address_4",       limit: 50
    t.string   "town_city",       limit: 50,                                       null: false
    t.string   "county",          limit: 50,                                       null: false
    t.string   "postcode",        limit: 10,                                       null: false
    t.string   "country",         limit: 50,                                       null: false
    t.decimal  "latitude",                    precision: 10, scale: 6
    t.decimal  "longitude",                   precision: 10, scale: 6
    t.string   "display_address", limit: 200,                                      null: false
    t.integer  "status",          limit: 4,                            default: 1
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
  end

  add_index "branches", ["agent_id"], name: "index_branches_on_agent_id", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "features", force: :cascade do |t|
    t.integer  "listing_id", limit: 4
    t.string   "value",      limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "features", ["listing_id"], name: "index_features_on_listing_id", using: :btree

  create_table "flags", force: :cascade do |t|
    t.integer  "listing_id", limit: 4
    t.string   "value",      limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "flags", ["listing_id"], name: "index_flags_on_listing_id", using: :btree

  create_table "frequencies", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "branch_id",               limit: 4
    t.integer  "age_id",                  limit: 4
    t.integer  "availability_id",         limit: 4
    t.integer  "department_id",           limit: 4
    t.integer  "frequency_id",            limit: 4
    t.integer  "qualifier_id",            limit: 4
    t.integer  "sale_type_id",            limit: 4
    t.integer  "style_id",                limit: 4
    t.integer  "tenure_id",               limit: 4
    t.integer  "type_id",                 limit: 4
    t.string   "address_1",               limit: 50,                                             null: false
    t.string   "address_2",               limit: 50
    t.string   "address_3",               limit: 50
    t.string   "address_4",               limit: 50
    t.string   "town_city",               limit: 50,                                             null: false
    t.string   "county",                  limit: 50,                                             null: false
    t.string   "postcode",                limit: 10,                                             null: false
    t.string   "country",                 limit: 50,                                             null: false
    t.decimal  "latitude",                              precision: 10, scale: 6,                 null: false
    t.decimal  "longitude",                             precision: 10, scale: 6,                 null: false
    t.string   "display_address",         limit: 200,                                            null: false
    t.integer  "bedrooms",                limit: 4,                              default: 0,     null: false
    t.integer  "bathrooms",               limit: 4,                              default: 0,     null: false
    t.integer  "ensuites",                limit: 4,                              default: 0,     null: false
    t.integer  "receptions",              limit: 4,                              default: 0,     null: false
    t.integer  "kitchens",                limit: 4,                              default: 0,     null: false
    t.text     "summary",                 limit: 65535,                                          null: false
    t.text     "description",             limit: 65535,                                          null: false
    t.decimal  "price",                                 precision: 12, scale: 2, default: 0.0,   null: false
    t.boolean  "price_on_application",                                           default: false, null: false
    t.boolean  "development",                                                    default: false, null: false
    t.boolean  "investment",                                                     default: false, null: false
    t.decimal  "estimated_rental_income",               precision: 9,  scale: 2, default: 0.0,   null: false
    t.decimal  "rent",                                  precision: 9,  scale: 2, default: 0.0,   null: false
    t.boolean  "rent_on_application",                                            default: false, null: false
    t.boolean  "student",                                                        default: false, null: false
    t.text     "rental_detail",           limit: 65535
    t.boolean  "featured",                                                       default: false, null: false
    t.integer  "status",                  limit: 4,                              default: 1,     null: false
    t.datetime "created_at",                                                                     null: false
    t.datetime "updated_at",                                                                     null: false
  end

  add_index "listings", ["age_id"], name: "index_listings_on_age_id", using: :btree
  add_index "listings", ["availability_id"], name: "index_listings_on_availability_id", using: :btree
  add_index "listings", ["branch_id"], name: "index_listings_on_branch_id", using: :btree
  add_index "listings", ["department_id"], name: "index_listings_on_department_id", using: :btree
  add_index "listings", ["frequency_id"], name: "index_listings_on_frequency_id", using: :btree
  add_index "listings", ["qualifier_id"], name: "index_listings_on_qualifier_id", using: :btree
  add_index "listings", ["sale_type_id"], name: "index_listings_on_sale_type_id", using: :btree
  add_index "listings", ["style_id"], name: "index_listings_on_style_id", using: :btree
  add_index "listings", ["tenure_id"], name: "index_listings_on_tenure_id", using: :btree
  add_index "listings", ["type_id"], name: "index_listings_on_type_id", using: :btree

  create_table "media_types", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "qualifiers", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "sale_types", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tenures", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "value",      limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.boolean  "admin",                              default: false, null: false
    t.string   "api_token",              limit: 100
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,     null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
