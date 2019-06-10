class Photo < ApplicationRecord
  belongs_to :shortlist
  validates :photo_url, presence: true

  mount_uploader :photo_url, PhotoUploader
end
