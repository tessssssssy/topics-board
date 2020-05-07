class Topic < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 2 }
  has_many :votes
end
