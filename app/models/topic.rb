class Topic < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  validates :title, presence: true, length: { minimum: 2 }
<<<<<<< HEAD
=======
  has_many :votes
  has_one_attached :image
>>>>>>> 2acca6726dcf4b913ffbfb0fefc54004d58d71b1
end
