class Comment < ApplicationRecord
  belongs_to :shortlist
  validates :content, presence: true
end
