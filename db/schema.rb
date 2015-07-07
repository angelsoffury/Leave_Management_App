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

ActiveRecord::Schema.define(version: 20150705201500) do

  create_table "leaves", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.text     "reason"
    t.integer  "user_id"
    t.integer  "approver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",      default: "Pending"
  end

  add_index "leaves", ["user_id", "created_at"], name: "index_leaves_on_user_id_and_created_at"

  create_table "roles", force: true do |t|
    t.integer  "manager_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["employee_id"], name: "index_roles_on_employee_id"
  add_index "roles", ["manager_id", "employee_id"], name: "index_roles_on_manager_id_and_employee_id", unique: true
  add_index "roles", ["manager_id"], name: "index_roles_on_manager_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
