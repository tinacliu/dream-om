class Shortlist < ApplicationRecord
  belongs_to :user
  belongs_to :plot
  has_one :comment, dependent: :destroy
  has_many :photos, dependent: :destroy
end
