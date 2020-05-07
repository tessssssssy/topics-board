class Topic < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy

  validates :title, presence: true, length: { minimum: 2 }
  has_many :votes
  has_one_attached :image
end
