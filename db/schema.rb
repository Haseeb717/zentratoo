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

ActiveRecord::Schema.define(version: 2021_02_06_080721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "alerts", force: :cascade do |t|
    t.bigint "request_id"
    t.string "alert_type"
    t.bigint "area_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_alerts_on_area_id"
    t.index ["request_id"], name: "index_alerts_on_request_id"
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.boolean "non_quantitative_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blacklist_words", force: :cascade do |t|
    t.string "langugage"
    t.text "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.bigint "area_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_categories_on_area_id"
  end

  create_table "convertible_units", force: :cascade do |t|
    t.string "en_name"
    t.string "de_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "request_type"
    t.bigint "category_id"
    t.bigint "area_id"
    t.string "name"
    t.string "region"
    t.text "description"
    t.date "manufacture_date"
    t.text "document_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "currency_id"
    t.bigint "convertible_unit_id"
    t.integer "quantity"
    t.float "price"
    t.bigint "user_id"
    t.index ["area_id"], name: "index_requests_on_area_id"
    t.index ["category_id"], name: "index_requests_on_category_id"
    t.index ["convertible_unit_id"], name: "index_requests_on_convertible_unit_id"
    t.index ["currency_id"], name: "index_requests_on_currency_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
    t.string "vat_percentage"
    t.string "address"
    t.string "country"
    t.string "language"
    t.string "country_code"
    t.string "area_code"
    t.string "phone"
    t.string "fax"
    t.text "summary"
    t.string "unit_system"
    t.string "payment_way"
    t.string "membership_level"
    t.boolean "status", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "views", force: :cascade do |t|
    t.integer "viewable_id"
    t.string "viewable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alerts", "areas"
  add_foreign_key "alerts", "requests"
  add_foreign_key "alerts", "users"
  add_foreign_key "categories", "areas"
  add_foreign_key "requests", "areas"
  add_foreign_key "requests", "categories"
  add_foreign_key "requests", "convertible_units"
  add_foreign_key "requests", "currencies"
  add_foreign_key "requests", "users"
end
