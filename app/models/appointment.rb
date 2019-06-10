class Appointment < ApplicationRecord
  belongs_to :project
  belongs_to :architect

  validates :appt_time, presence: true
end
