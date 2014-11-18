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

ActiveRecord::Schema.define(version: 20141117051043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_tree_categories", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  create_table "user_maintenance_users", force: true do |t|
    t.string   "email",                            default: "",   null: false
    t.string   "encrypted_password",               default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "roles_mask"
    t.boolean  "enabled",                          default: true
    t.integer  "password_last_updated_by_user_id"
    t.datetime "deleted_at"
  end

  add_index "user_maintenance_users", ["deleted_at"], name: "index_user_maintenance_users_on_deleted_at", using: :btree
  add_index "user_maintenance_users", ["email"], name: "index_user_maintenance_users_on_email", unique: true, using: :btree
  add_index "user_maintenance_users", ["reset_password_token"], name: "index_user_maintenance_users_on_reset_password_token", unique: true, using: :btree

end