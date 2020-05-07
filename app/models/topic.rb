class Topic < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  validates :title, presence: true, length: { minimum: 2 }
<<<<<<< HEAD
=======
  has_many :votes
  has_one_attached :image
>>>>>>> 5dfa2a77489ccf4b815684c006617ed18caae77f
end
