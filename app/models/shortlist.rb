class Shortlist < ApplicationRecord
  belongs_to :user
  belongs_to :plot
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
end
