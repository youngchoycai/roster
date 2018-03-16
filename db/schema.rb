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

ActiveRecord::Schema.define(version: 20180314023526) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "dancers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "gender"
    t.string "year"
    t.string "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dancers_teams", id: false, force: :cascade do |t|
    t.integer "dancer_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dancer_id", "team_id"], name: "index_dancers_teams_on_dancer_id_and_team_id"
    t.index ["team_id", "dancer_id"], name: "index_dancers_teams_on_team_id_and_dancer_id"
  end

  create_table "team_switch_requests", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "reason"
    t.datetime "approved_at"
    t.string "status"
    t.integer "old_team_id"
    t.integer "new_team_id"
    t.integer "dancer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dancer_id"], name: "index_team_switch_requests_on_dancer_id"
    t.index ["new_team_id"], name: "index_team_switch_requests_on_new_team_id"
    t.index ["old_team_id"], name: "index_team_switch_requests_on_old_team_id"
  end

  create_table "team_switch_requests_available_teams", id: false, force: :cascade do |t|
    t.integer "team_switch_request_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id", "team_switch_request_id"], name: "index_team_switch_requests_available_teams_on_team_and_request"
    t.index ["team_switch_request_id", "team_id"], name: "index_team_switch_requests_available_teams_on_request_and_team"
  end

  create_table "teams", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "practice_time"
    t.boolean "locked"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end