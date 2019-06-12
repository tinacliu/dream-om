class Project < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :title, :budget, :plot_postcode, presence: true
  validates :budget, numericality: { only_integer: true }
  validates :category, inclusion: { in: Architect::SPECIALITY }
end
