class Project < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :title, :budget, :brief, :plot_postcode, presence: true
  validates :budget, numericality: { only_integer: true }
  validates :brief, length: { minimum: 50 }
  validates :category, inclusion: { in: Architect::SPECIALITY }
end
