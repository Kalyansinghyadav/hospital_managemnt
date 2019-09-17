# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_17_125449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admit_patients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "address"
    t.integer "contact_no"
    t.bigint "room_id", null: false
    t.integer "bed_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "disease"
    t.index ["room_id"], name: "index_admit_patients_on_room_id"
  end

  create_table "admit_patients_medicines", id: false, force: :cascade do |t|
    t.bigint "admit_patient_id"
    t.bigint "medicine_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admit_patient_id"], name: "index_admit_patients_medicines_on_admit_patient_id"
    t.index ["medicine_id"], name: "index_admit_patients_medicines_on_medicine_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "date_of_appointment"
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "time"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.bigint "contact_no"
    t.string "address"
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "department_id", null: false
    t.boolean "status"
    t.index ["department_id"], name: "index_doctors_on_department_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "medicine_name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "contact"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.bigint "admit_patient_id", null: false
    t.bigint "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admit_patient_id"], name: "index_records_on_admit_patient_id"
    t.index ["doctor_id"], name: "index_records_on_doctor_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_name"
    t.string "room_type"
    t.integer "no_of_beds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "confirm_password"
    t.date "dob"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "admit_patients", "rooms"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "doctors", "departments"
  add_foreign_key "records", "admit_patients"
  add_foreign_key "records", "doctors"
end
