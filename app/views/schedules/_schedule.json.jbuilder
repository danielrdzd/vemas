json.extract! schedule, :id, :day, :doctor_id, :patient_id, :receptionist_id, :comment_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
