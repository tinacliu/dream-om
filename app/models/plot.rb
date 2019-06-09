class Plot < ApplicationRecord
  TYPE = ["Bungalow", "Detached house", "End terrace house", "Farmhouse", "Land", "Semi-detached house", "Terraced house"]
  has_many :shortlists

  validates :price, numericality: { only_integer: true }
  validates :address, :agent_name, :agent_phone, :description, presence: true
  validates :description, length: { minimum: 20 }
  validates :listing_id, uniqueness: true
  # validates :location, :plot_size, presence: true
  default_scope { order('created_at DESC') }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
