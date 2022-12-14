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

ActiveRecord::Schema[7.0].define(version: 2023_01_01_083211) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "target_id", null: false
    t.bigint "target_type", null: false
    t.integer "status", default: 0
    t.integer "flags", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_id", "target_type"], name: "index_comments_on_target_id_and_target_type"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "type"
    t.string "title", null: false
    t.text "description"
    t.bigint "user_id", null: false
    t.integer "status", default: 0
    t.integer "flags", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "type"
    t.string "email", null: false
    t.string "name"
    t.string "auth_token"
    t.string "password"
    t.string "password_salt"
    t.integer "status", default: 0
    t.integer "flags", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auth_token"], name: "index_users_on_auth_token"
    t.index ["email"], name: "unique_users_on_email", unique: true
  end

end
