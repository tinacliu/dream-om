class Architect < ApplicationRecord
  SPECIALITY = ["Extension", "Renovation", "Conversion", "New Build: Eco-Home", "New Build: City Home", "New Build: Country Home"]
  LOCATION = ["London - North", "London - West", "London - East", "London - South"]
  has_many :appointments

  validates :name, :website_url, :bio, :portfolio_url, :min_project_budget, :appt_rate, presence: true
  validates :min_project_budget, :appt_rate, numericality: { only_integer: true }
  validates :speciality, inclusion: { in: SPECIALITY }
end

