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

ActiveRecord::Schema.define(version: 2019_02_27_193619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "logo_url"
    t.string "location"
    t.text "description"
    t.index ["name"], name: "index_companies_on_name", unique: true
  end

  create_table "experience_levels", force: :cascade do |t|
    t.string "experience_level", null: false
    t.index ["experience_level"], name: "index_experience_levels_on_experience_level", unique: true
  end

  create_table "job_listings", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "title", null: false
    t.string "location", null: false
    t.text "description", null: false
    t.string "application_url", null: false
    t.integer "region_id", null: false
    t.integer "experience_level_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_listings_on_company_id"
    t.index ["experience_level_id"], name: "index_job_listings_on_experience_level_id"
    t.index ["region_id"], name: "index_job_listings_on_region_id"
    t.index ["title"], name: "index_job_listings_on_title"
  end

  create_table "jobs_keywords", force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "keyword_id", null: false
    t.index ["job_id", "keyword_id"], name: "index_jobs_keywords_on_job_id_and_keyword_id", unique: true
    t.index ["job_id"], name: "index_jobs_keywords_on_job_id"
    t.index ["keyword_id"], name: "index_jobs_keywords_on_keyword_id"
  end

  create_table "jobs_skills", force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "skill_id", null: false
    t.index ["job_id", "skill_id"], name: "index_jobs_skills_on_job_id_and_skill_id", unique: true
    t.index ["job_id"], name: "index_jobs_skills_on_job_id"
    t.index ["skill_id"], name: "index_jobs_skills_on_skill_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "keyword", null: false
    t.index ["keyword"], name: "index_keywords_on_keyword", unique: true
  end

  create_table "regions", force: :cascade do |t|
    t.string "region", null: false
    t.index ["region"], name: "index_regions_on_region", unique: true
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill", null: false
    t.index ["skill"], name: "index_skills_on_skill", unique: true
  end

end
