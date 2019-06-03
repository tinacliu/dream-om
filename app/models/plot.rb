class Plot < ApplicationRecord
  has_many :shortlists

  validates :price, numericality: { only_integer: true }
  validates :address, :property_type, :agent_name, :agent_phone, :description, presence: true
  validates :description, length: { minumum: 20 }
  # validates :location, :plot_size, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
