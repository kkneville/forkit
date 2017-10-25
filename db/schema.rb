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

ActiveRecord::Schema.define(version: 20171025162336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "meal_id"
  end

  add_index "ingredients", ["item_id"], name: "index_ingredients_on_item_id", using: :btree
  add_index "ingredients", ["meal_id"], name: "index_ingredients_on_meal_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string   "title"
    t.integer  "recipe_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.string   "publisher"
    t.string   "publisher_url"
    t.integer  "rank"
    t.string   "img"
  end

  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "mealplans", force: :cascade do |t|
    t.date     "startdate"
    t.date     "enddate"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "name"
  end

  add_index "mealplans", ["user_id"], name: "index_mealplans_on_user_id", using: :btree

  create_table "meals", force: :cascade do |t|
    t.integer  "mealplan_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "title"
    t.string   "source"
    t.string   "img"
    t.string   "publisher"
    t.string   "publisher_url"
    t.integer  "rank"
    t.integer  "recipe_id"
  end

  add_index "meals", ["mealplan_id"], name: "index_meals_on_mealplan_id", using: :btree
  add_index "meals", ["user_id"], name: "index_meals_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_foreign_key "ingredients", "items"
  add_foreign_key "ingredients", "meals"
  add_foreign_key "likes", "users"
  add_foreign_key "mealplans", "users"
  add_foreign_key "meals", "mealplans"
  add_foreign_key "meals", "users"
end
