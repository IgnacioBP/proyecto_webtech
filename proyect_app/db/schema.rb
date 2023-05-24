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

ActiveRecord::Schema[7.0].define(version: 2023_05_23_172017) do
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
    t.bigint "all_user_id", null: false
    t.index ["all_user_id"], name: "index_administrators_on_all_user_id"
  end

  create_table "all_users", force: :cascade do |t|
    t.text "account_mail", null: false
    t.string "account_level", null: false
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

  create_table "chats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.index ["ticket_id"], name: "index_chats_on_ticket_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "text", null: false
    t.string "writer", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chat_id", null: false
    t.index ["chat_id"], name: "index_comments_on_chat_id"
  end

  create_table "executive_reports", force: :cascade do |t|
    t.text "executive_mail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "performance_report_id", null: false
    t.index ["executive_mail"], name: "index_executive_reports_on_executive_mail"
    t.index ["performance_report_id"], name: "index_executive_reports_on_performance_report_id"
  end

  create_table "executives", primary_key: "mail", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.integer "phone", null: false
    t.text "password", null: false
    t.string "mail_original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "all_user_id", null: false
    t.bigint "stars_value", default: 0, null: false
    t.bigint "closed_count", default: 0, null: false
    t.index ["all_user_id"], name: "index_executives_on_all_user_id"
  end

  create_table "performance_reports", force: :cascade do |t|
    t.datetime "report_date", null: false
    t.text "administrator_mail"
    t.text "supervisor_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_mail"], name: "index_performance_reports_on_administrator_mail"
    t.index ["supervisor_mail"], name: "index_performance_reports_on_supervisor_mail"
  end

  create_table "supervisors", primary_key: "mail", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.integer "phone", null: false
    t.text "password", null: false
    t.string "mail_original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "all_user_id", null: false
    t.index ["all_user_id"], name: "index_supervisors_on_all_user_id"
  end

  create_table "tag_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.index ["ticket_id"], name: "index_tag_lists_on_ticket_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tag_list_id", null: false
    t.index ["tag_list_id"], name: "index_tags_on_tag_list_id"
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
    t.string "title", null: false
    t.string "incident_description", null: false
    t.datetime "creation_date", default: "2023-05-23 23:24:19", null: false
    t.datetime "resolution_date", default: "2023-05-23 23:24:19", null: false
    t.datetime "response_to_user_date", default: "2023-05-23 23:24:19", null: false
    t.string "priority", default: "Low", null: false
    t.string "state", default: "Waiting", null: false
    t.string "resolution_key", default: "not yet", null: false
    t.string "response_key", default: "not yet", null: false
    t.string "response_to_user", default: " ", null: false
    t.string "accept_or_reject_solution", default: "Waiting", null: false
    t.integer "star_number", default: 0, null: false
    t.datetime "limit_time_response", default: "2023-05-23 23:24:19", null: false
    t.datetime "limit_time_resolution", default: "2023-05-23 23:24:19", null: false
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
    t.bigint "all_user_id", null: false
    t.index ["all_user_id"], name: "index_users_on_all_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "administrators", "all_users"
  add_foreign_key "assign_tickets", "executives", column: "executive_mail", primary_key: "mail", on_delete: :cascade
  add_foreign_key "assign_tickets", "tickets"
  add_foreign_key "chats", "tickets"
  add_foreign_key "comments", "chats"
  add_foreign_key "executive_reports", "executives", column: "executive_mail", primary_key: "mail", on_delete: :cascade
  add_foreign_key "executive_reports", "performance_reports"
  add_foreign_key "executives", "all_users"
  add_foreign_key "performance_reports", "administrators", column: "administrator_mail", primary_key: "mail", on_delete: :cascade
  add_foreign_key "performance_reports", "supervisors", column: "supervisor_mail", primary_key: "mail", on_delete: :cascade
  add_foreign_key "supervisors", "all_users"
  add_foreign_key "tag_lists", "tickets"
  add_foreign_key "tags", "tag_lists"
  add_foreign_key "ticket_lists", "tickets"
  add_foreign_key "ticket_lists", "users", column: "user_mail", primary_key: "mail", on_delete: :cascade
  add_foreign_key "users", "all_users"
end
