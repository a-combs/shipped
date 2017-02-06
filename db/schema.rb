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

ActiveRecord::Schema.define(version: 20170206184437) do

  create_table "boats", force: :cascade do |t|
    t.string   "name"
    t.integer  "containers"
    t.string   "location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "boats_jobs", id: false, force: :cascade do |t|
    t.integer "boat_id", null: false
    t.integer "job_id",  null: false
    t.index ["boat_id", "job_id"], name: "index_boats_jobs_on_boat_id_and_job_id"
    t.index ["job_id", "boat_id"], name: "index_boats_jobs_on_job_id_and_boat_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "description"
    t.string   "origin"
    t.string   "destination"
    t.integer  "cost"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end