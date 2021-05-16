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

ActiveRecord::Schema.define(version: 2021_05_15_190654) do

  create_table "cme_coach_licenses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.string "source_url"
    t.string "at_glance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state"
    t.integer "specialty_id", null: false
    t.index ["specialty_id"], name: "index_cme_coach_licenses_on_specialty_id"
  end

  create_table "cme_recommendation_items", force: :cascade do |t|
    t.integer "cme_recommendation_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cme_recommendation_id"], name: "index_cme_recommendation_items_on_cme_recommendation_id"
  end

  create_table "cme_recommendations", force: :cascade do |t|
    t.integer "specialty_id", null: false
    t.string "url"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_cme_recommendations_on_specialty_id"
  end

  create_table "license_requirements", force: :cascade do |t|
    t.integer "cme_coach_license_id", null: false
    t.string "years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cme_coach_license_id"], name: "index_license_requirements_on_cme_coach_license_id"
  end

  create_table "requirement_items", force: :cascade do |t|
    t.integer "license_requirement_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["license_requirement_id"], name: "index_requirement_items_on_license_requirement_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cme_coach_licenses", "specialties"
  add_foreign_key "cme_recommendation_items", "cme_recommendations"
  add_foreign_key "cme_recommendations", "specialties"
  add_foreign_key "license_requirements", "cme_coach_licenses"
  add_foreign_key "requirement_items", "license_requirements"
end
