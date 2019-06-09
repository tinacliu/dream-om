class Architect < ApplicationRecord
  has_many :appointments

  validates :name, :website_url, :bio, :portfolio_url, :speciality, :min_project_budget, :appt_rate, presence: true
  validates :min_project_budget, :appt_rate, numericality: { only_integer: true }
end
