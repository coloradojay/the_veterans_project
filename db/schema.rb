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

ActiveRecord::Schema.define(version: 20150218083619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address1",   null: false
    t.string   "address2"
    t.string   "city",       null: false
    t.string   "state",      null: false
    t.string   "zip",        null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",                             null: false
    t.string   "address1",                         null: false
    t.string   "address2"
    t.string   "city",                             null: false
    t.string   "state",                            null: false
    t.string   "zip",                              null: false
    t.string   "email",                            null: false
    t.string   "phone_number",                     null: false
    t.string   "website",                          null: false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "google_plus"
    t.string   "password_digest",                  null: false
    t.text     "description"
    t.integer  "num_employees",                    null: false
    t.boolean  "verified",         default: false, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "contact_name"
    t.string   "contact_position"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.integer  "user_id"
    t.integer  "type_id"
    t.integer  "sector_id"
  end

  add_index "companies", ["sector_id"], name: "index_companies_on_sector_id", using: :btree
  add_index "companies", ["type_id"], name: "index_companies_on_type_id", using: :btree
  add_index "companies", ["user_id"], name: "index_companies_on_user_id", using: :btree

  create_table "companies_vet_programs", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "vet_program_id"
  end

  add_index "companies_vet_programs", ["company_id"], name: "index_companies_vet_programs_on_company_id", using: :btree
  add_index "companies_vet_programs", ["vet_program_id"], name: "index_companies_vet_programs_on_vet_program_id", using: :btree

  create_table "educations", force: :cascade do |t|
    t.string   "school_name",      null: false
    t.datetime "yr_attended_from"
    t.datetime "yr_attended_to"
    t.string   "degree_name"
    t.string   "field_of_study"
    t.string   "description"
    t.integer  "user_id",          null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "educations", ["user_id"], name: "index_educations_on_user_id", using: :btree

  create_table "employment_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "job_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employment_types", ["job_id"], name: "index_employment_types_on_job_id", using: :btree

  create_table "experiences", force: :cascade do |t|
    t.string   "name"
    t.integer  "job_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "experiences", ["job_id"], name: "index_experiences_on_job_id", using: :btree

  create_table "jobfunctions", force: :cascade do |t|
    t.string   "name"
    t.integer  "job_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "jobfunctions", ["job_id"], name: "index_jobfunctions_on_job_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "city",        null: false
    t.string   "state",       null: false
    t.text     "description"
    t.string   "salary"
    t.integer  "company_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "jobs_skills", id: false, force: :cascade do |t|
    t.integer "job_id"
    t.integer "skill_id"
  end

  add_index "jobs_skills", ["job_id"], name: "index_jobs_skills_on_job_id", using: :btree

  create_table "military_experiences", force: :cascade do |t|
    t.string   "branch",     null: false
    t.string   "mos",        null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id",    null: false
  end

  add_index "military_experiences", ["user_id"], name: "index_military_experiences_on_user_id", using: :btree

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_users", id: false, force: :cascade do |t|
    t.integer "skill_id"
    t.integer "user_id"
  end

  add_index "skills_users", ["skill_id"], name: "index_skills_users_on_skill_id", using: :btree
  add_index "skills_users", ["user_id"], name: "index_skills_users_on_user_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.integer  "job_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statuses", ["job_id"], name: "index_statuses_on_job_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.string   "email",                           null: false
    t.string   "phone_number"
    t.boolean  "verified",        default: false, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "business",        default: false, null: false
  end

  create_table "vet_programs", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_histories", force: :cascade do |t|
    t.string   "company_name", null: false
    t.string   "job_title",    null: false
    t.string   "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id",      null: false
  end

  add_index "work_histories", ["user_id"], name: "index_work_histories_on_user_id", using: :btree

  add_foreign_key "addresses", "users"
  add_foreign_key "companies", "sectors"
  add_foreign_key "companies", "types"
  add_foreign_key "companies", "users"
  add_foreign_key "educations", "users"
  add_foreign_key "employment_types", "jobs"
  add_foreign_key "experiences", "jobs"
  add_foreign_key "jobfunctions", "jobs"
  add_foreign_key "jobs", "companies"
  add_foreign_key "military_experiences", "users"
  add_foreign_key "statuses", "jobs"
  add_foreign_key "work_histories", "users"
end
