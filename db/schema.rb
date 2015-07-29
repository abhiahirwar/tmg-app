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

ActiveRecord::Schema.define(version: 20150729033911) do

  create_table "addresses", force: :cascade do |t|
    t.string   "property_name", limit: 255
    t.string   "street1",       limit: 255
    t.string   "street2",       limit: 255
    t.string   "suburb",        limit: 255
    t.string   "postcode",      limit: 255
    t.string   "state",         limit: 255
    t.string   "country",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.text     "content",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "test_id",     limit: 4
  end

  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "course_categories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "content",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "code",                   limit: 255
    t.integer  "course_category_id",     limit: 4
    t.decimal  "fee_for_service",                    precision: 10
    t.decimal  "vet_fee",                            precision: 10
    t.decimal  "gov_funded",                         precision: 10
    t.decimal  "concession_gov_funded",              precision: 10
    t.decimal  "material_cost",                      precision: 10
    t.decimal  "transfer_fee",                       precision: 10
    t.decimal  "re_issue_certificate",               precision: 10
    t.string   "delivery_mode",          limit: 255
    t.string   "location_of_delivery",   limit: 255
    t.string   "study_duration",         limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "course_review_document", limit: 255
    t.string   "web_link",               limit: 255
  end

  add_index "courses", ["course_category_id"], name: "index_courses_on_course_category_id", using: :btree

  create_table "emergency_contacts", force: :cascade do |t|
    t.string   "contact_name", limit: 255
    t.string   "relationship", limit: 255
    t.string   "home_phone",   limit: 255
    t.string   "mobile",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "trading_name",     limit: 255
    t.string   "contact_name",     limit: 255
    t.string   "supervisor_name",  limit: 255
    t.string   "training_address", limit: 255
    t.string   "phone",            limit: 255
    t.string   "fax",              limit: 255
    t.string   "email",            limit: 255
    t.string   "abn",              limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "employment_status", limit: 255
    t.string   "recent_occupation", limit: 255
    t.string   "industry",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "enrolments", force: :cascade do |t|
    t.integer  "course_id",                       limit: 4
    t.string   "delivery_mode",                   limit: 255
    t.integer  "student_id",                      limit: 4
    t.integer  "address_id",                      limit: 4
    t.integer  "employer_id",                     limit: 4
    t.integer  "emergency_contact_id",            limit: 4
    t.integer  "emergency_contact1_id",           limit: 4
    t.integer  "language_culture_diversity_id",   limit: 4
    t.integer  "school_id",                       limit: 4
    t.integer  "employment_id",                   limit: 4
    t.integer  "vic_student_id",                  limit: 4
    t.string   "completed_qualification",         limit: 255
    t.string   "qualification_received_location", limit: 255
    t.string   "vet",                             limit: 255
    t.string   "toc",                             limit: 255
    t.integer  "postal_address_id",               limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "user_id",                         limit: 4
    t.integer  "course_category_id",              limit: 4
    t.boolean  "completed_qualification_status",  limit: 1
  end

  add_index "enrolments", ["address_id"], name: "index_enrolments_on_address_id", using: :btree
  add_index "enrolments", ["course_id"], name: "index_enrolments_on_course_id", using: :btree
  add_index "enrolments", ["emergency_contact_id"], name: "index_enrolments_on_emergency_contact_id", using: :btree
  add_index "enrolments", ["employer_id"], name: "index_enrolments_on_employer_id", using: :btree
  add_index "enrolments", ["employment_id"], name: "index_enrolments_on_employment_id", using: :btree
  add_index "enrolments", ["language_culture_diversity_id"], name: "index_enrolments_on_language_culture_diversity_id", using: :btree
  add_index "enrolments", ["school_id"], name: "index_enrolments_on_school_id", using: :btree
  add_index "enrolments", ["student_id"], name: "index_enrolments_on_student_id", using: :btree
  add_index "enrolments", ["user_id"], name: "index_enrolments_on_user_id", using: :btree
  add_index "enrolments", ["vic_student_id"], name: "index_enrolments_on_vic_student_id", using: :btree

  create_table "forms", force: :cascade do |t|
    t.string   "form_name",   limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "image",        limit: 255
    t.string   "category",     limit: 255
    t.integer  "enrolment_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "language_culture_diversities", force: :cascade do |t|
    t.string   "birth_country", limit: 255
    t.string   "home_language", limit: 255
    t.string   "english_level", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "aboriginal",    limit: 255
  end

  create_table "pre_training_reviews", force: :cascade do |t|
    t.string   "rpl",                      limit: 255
    t.string   "credit_transfer",          limit: 255
    t.string   "area_of_work",             limit: 255
    t.string   "employment",               limit: 255
    t.string   "pathway",                  limit: 255
    t.string   "preferred_learning_style", limit: 255
    t.string   "delivery_mode",            limit: 255
    t.string   "special_condition",        limit: 255
    t.boolean  "toc",                      limit: 1
    t.integer  "user_id",                  limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "pre_training_reviews", ["user_id"], name: "index_pre_training_reviews_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.integer  "form_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "test_id",    limit: 4
  end

  add_index "questions", ["form_id"], name: "index_questions_on_form_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "highest_school_level", limit: 255
    t.string   "year",                 limit: 255
    t.string   "secondary_school",     limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "student_ids", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "image",              limit: 255
    t.string   "category",           limit: 255
    t.integer  "enrolment_id",       limit: 4
    t.integer  "user_id",            limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "surname",           limit: 255
    t.string   "firstname",         limit: 255
    t.string   "middlename",        limit: 255
    t.date     "dob"
    t.string   "home_phone",        limit: 255
    t.string   "mobile",            limit: 255
    t.string   "email",             limit: 255
    t.string   "city_of_birth",     limit: 255
    t.string   "usi",               limit: 255
    t.string   "disability",        limit: 255
    t.string   "aus_citizen",       limit: 255
    t.string   "study_reason",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "have_usi",          limit: 1
    t.boolean  "disability_status", limit: 1
  end

  create_table "tests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "mobile",                 limit: 255
    t.string   "role",                   limit: 255
    t.string   "return_to_url",          limit: 255
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vic_students", force: :cascade do |t|
    t.string   "vsn",             limit: 255
    t.string   "latest_school",   limit: 255
    t.string   "previous_school", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "answers", "users"
  add_foreign_key "courses", "course_categories"
  add_foreign_key "enrolments", "addresses"
  add_foreign_key "enrolments", "courses"
  add_foreign_key "enrolments", "emergency_contacts"
  add_foreign_key "enrolments", "employers"
  add_foreign_key "enrolments", "employments"
  add_foreign_key "enrolments", "language_culture_diversities"
  add_foreign_key "enrolments", "schools"
  add_foreign_key "enrolments", "students"
  add_foreign_key "enrolments", "vic_students"
  add_foreign_key "pre_training_reviews", "users"
  add_foreign_key "questions", "forms"
end
