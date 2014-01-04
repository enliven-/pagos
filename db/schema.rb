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

ActiveRecord::Schema.define(version: 20140102143649) do

  create_table "customers", force: true do |t|
    t.string   "token"
    t.string   "name"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  add_index "customers", ["token"], name: "index_customers_on_token", unique: true

  create_table "invoices", force: true do |t|
    t.integer  "vendor_id"
    t.integer  "customer_id"
    t.string   "token"
    t.string   "balance_due"
    t.text     "message"
    t.datetime "due_at"
    t.datetime "invoice_at"
    t.string   "email"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["token"], name: "index_invoices_on_token", unique: true

  create_table "items", force: true do |t|
    t.integer  "vendor_id"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendors", ["token"], name: "index_vendors_on_token", unique: true

end
