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

ActiveRecord::Schema.define(version: 20170711021239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "photo1"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "photo4"
    t.string   "photo5"
    t.string   "photo6"
    t.string   "photo7"
    t.boolean  "is_ready"
    t.integer  "pprofile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pprofile_id"], name: "index_books_on_pprofile_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "citypresences", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "city_id"
    t.string   "name"
    t.string   "neighborhood"
    t.boolean  "is_paid"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_under_date_limit"
    t.index ["city_id"], name: "index_citypresences_on_city_id", using: :btree
    t.index ["user_id"], name: "index_citypresences_on_user_id", using: :btree
  end

  create_table "docs", force: :cascade do |t|
    t.string   "photo_front"
    t.string   "photo_back"
    t.string   "photo1"
    t.string   "photo2"
    t.boolean  "is_ready"
    t.integer  "pprofile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pprofile_id"], name: "index_docs_on_pprofile_id", using: :btree
  end

  create_table "pprofile_photos", force: :cascade do |t|
    t.integer  "pprofile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo1"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "photo4"
    t.string   "photo5"
    t.string   "photo6"
    t.string   "photo7"
    t.index ["pprofile_id"], name: "index_pprofile_photos_on_pprofile_id", using: :btree
  end

  create_table "pprofiles", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "site"
    t.string   "instagram"
    t.string   "twitter"
    t.string   "forum"
    t.datetime "created_at",                                                                                                                                                              null: false
    t.datetime "updated_at",                                                                                                                                                              null: false
    t.integer  "user_id"
    t.string   "neighborhood"
    t.string   "phone_number"
    t.text     "description"
    t.string   "photo_profile", default: "http://s4.storage.akamai.coub.com/get/b30/p/coub/simple/cw_timeline_pic/f41ea52c56a/40e3a11a1224c3423d307/med_1409617522_1382490910_image.jpg"
    t.string   "photo1",        default: "http://s4.storage.akamai.coub.com/get/b30/p/coub/simple/cw_timeline_pic/f41ea52c56a/40e3a11a1224c3423d307/med_1409617522_1382490910_image.jpg"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "photo4"
    t.string   "photo5"
    t.string   "photo6"
    t.string   "photo7"
    t.index ["user_id"], name: "index_pprofiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "is_female",              default: false
    t.boolean  "is_admin",               default: false
    t.string   "photo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "books", "pprofiles"
  add_foreign_key "citypresences", "cities"
  add_foreign_key "citypresences", "users"
  add_foreign_key "docs", "pprofiles"
  add_foreign_key "pprofile_photos", "pprofiles"
  add_foreign_key "pprofiles", "users"
end
