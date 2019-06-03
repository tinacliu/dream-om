class Shortlist < ApplicationRecord
  belongs_to :user
  belongs_to :plot
  has_many :comments
end
