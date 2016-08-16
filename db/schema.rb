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

ActiveRecord::Schema.define(version: 20160815224504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "influencers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "description"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "snapchat"
    t.string   "profession"
    t.text     "certifications"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "photo"
  end

  add_index "influencers", ["user_id"], name: "index_influencers_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "description"
    t.text     "tags"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "sparks", force: :cascade do |t|
    t.string   "name"
    t.string   "details"
    t.string   "verification"
    t.string   "criteria"
    t.date     "deadline"
    t.string   "video"
    t.string   "photo"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "influencer_id"
    t.string   "category"
  end

  add_index "sparks", ["influencer_id"], name: "index_sparks_on_influencer_id", using: :btree
  add_index "sparks", ["user_id"], name: "index_sparks_on_user_id", using: :btree

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.string   "industry"
    t.text     "tags"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "photo"
  end

  add_index "sponsors", ["user_id"], name: "index_sponsors_on_user_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "spark_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["spark_id"], name: "index_taggings_on_spark_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "sponsor"
    t.boolean  "influencer"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "influencers", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "sparks", "influencers"
  add_foreign_key "sparks", "users"
  add_foreign_key "sponsors", "users"
  add_foreign_key "taggings", "sparks"
  add_foreign_key "taggings", "tags"
end
