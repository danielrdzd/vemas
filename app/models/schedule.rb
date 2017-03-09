class Schedule < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :receptionist
  belongs_to :comment
end
