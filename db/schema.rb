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

ActiveRecord::Schema.define(version: 2019_06_03_083134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "shortlist_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shortlist_id"], name: "index_comments_on_shortlist_id"
  end

  create_table "plots", force: :cascade do |t|
    t.integer "price"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.string "property_type"
    t.string "location"
    t.integer "plot_size"
    t.integer "floor_size"
    t.integer "num_bathrooms"
    t.integer "num_bedrooms"
    t.integer "num_recepts"
    t.integer "num_floors"
    t.boolean "has_garden"
    t.boolean "has_attic"
    t.string "floor_plan_url"
    t.string "image_url"
    t.text "description"
    t.datetime "first_published_date"
    t.datetime "last_published_date"
    t.string "agent_name"
    t.string "agent_phone"
    t.string "agent_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.boolean "plan_granted"
    t.string "ownership_type"
  end

  create_table "shortlists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plot_id"], name: "index_shortlists_on_plot_id"
    t.index ["user_id"], name: "index_shortlists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "shortlists"
  add_foreign_key "shortlists", "plots"
  add_foreign_key "shortlists", "users"
end
