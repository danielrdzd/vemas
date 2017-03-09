ActiveRecord::Schema.define(version: 20170309035410) do

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "physician"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.boolean  "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receptionists", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "day"
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.integer  "receptionist_id"
    t.integer  "comment_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["comment_id"], name: "index_schedules_on_comment_id"
    t.index ["doctor_id"], name: "index_schedules_on_doctor_id"
    t.index ["patient_id"], name: "index_schedules_on_patient_id"
    t.index ["receptionist_id"], name: "index_schedules_on_receptionist_id"
  end

end
