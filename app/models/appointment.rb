class Appointment < ApplicationRecord
  belongs_to :project
  belongs_to :architect
end
