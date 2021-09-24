class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :Favorites
  has_many :likers, through: :favorites, source: :user
end
