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

ActiveRecord::Schema[7.0].define(version: 2023_05_22_160907) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "administrators", primary_key: "mail", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.integer "phone", null: false
    t.text "password", null: false
    t.string "mail_original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_users", force: :cascade do |t|
    t.text "account_mail"
    t.string "account_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assign_tickets", force: :cascade do |t|
    t.text "executive_mail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.index ["executive_mail"], name: "index_assign_tickets_on_executive_mail"
    t.index ["ticket_id"], name: "index_assign_tickets_on_ticket_id"
  end

  create_table "executives", primary_key: "mail", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.integer "phone", null: false
    t.text "password", null: false
    t.string "mail_original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supervisors", primary_key: "mail", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "phone"
    t.text "password"
    t.string "mail_original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_lists", force: :cascade do |t|
    t.text "user_mail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.index ["ticket_id"], name: "index_ticket_lists_on_ticket_id"
    t.index ["user_mail"], name: "index_ticket_lists_on_user_mail"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.string "incident_description"
    t.datetime "creation_date"
    t.datetime "resolution_date"
    t.datetime "response_to_user_date"
    t.string "priority"
    t.string "state"
    t.string "resolution_key"
    t.string "response_key"
    t.string "response_to_user"
    t.string "accept_or_reject_solution"
    t.integer "star_number"
    t.datetime "limit_time_response"
    t.datetime "limit_time_resolution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "mail", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.integer "phone", null: false
    t.text "password", null: false
    t.string "mail_original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "assign_tickets", "executives", column: "executive_mail", primary_key: "mail", on_delete: :cascade
  add_foreign_key "assign_tickets", "tickets"
  add_foreign_key "ticket_lists", "tickets"
  add_foreign_key "ticket_lists", "users", column: "user_mail", primary_key: "mail", on_delete: :cascade
end
