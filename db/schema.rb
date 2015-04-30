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

ActiveRecord::Schema.define(version: 20150429160321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "badges", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "highfives", force: :cascade do |t|
    t.integer  "shot_id"
    t.integer  "badge_id"
    t.integer  "giver_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "highfives", ["badge_id"], name: "index_highfives_on_badge_id", using: :btree
  add_index "highfives", ["giver_id"], name: "index_highfives_on_giver_id", using: :btree
  add_index "highfives", ["receiver_id"], name: "index_highfives_on_receiver_id", using: :btree
  add_index "highfives", ["shot_id"], name: "index_highfives_on_shot_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.boolean  "owner"
    t.string   "role"
    t.string   "team"
    t.integer  "account_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["account_id"], name: "index_profiles_on_account_id", using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "shot_invites", force: :cascade do |t|
    t.integer  "shot_id"
    t.integer  "inviter_id"
    t.integer  "invitee_id"
    t.boolean  "in_team",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "shot_invites", ["invitee_id"], name: "index_shot_invites_on_invitee_id", using: :btree
  add_index "shot_invites", ["inviter_id"], name: "index_shot_invites_on_inviter_id", using: :btree
  add_index "shot_invites", ["shot_id"], name: "index_shot_invites_on_shot_id", using: :btree

  create_table "shots", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "baseline_value"
    t.integer  "target_value"
    t.boolean  "accomplished"
    t.date     "deadline"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "account_id"
  end

  add_index "shots", ["account_id"], name: "index_shots_on_account_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "highfives", "badges"
  add_foreign_key "highfives", "profiles", column: "giver_id"
  add_foreign_key "highfives", "profiles", column: "receiver_id"
  add_foreign_key "highfives", "shots"
  add_foreign_key "profiles", "accounts"
  add_foreign_key "profiles", "users"
  add_foreign_key "shot_invites", "profiles", column: "invitee_id"
  add_foreign_key "shot_invites", "profiles", column: "inviter_id"
  add_foreign_key "shot_invites", "shots"
end
