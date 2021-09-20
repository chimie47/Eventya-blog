class Article < ApplicationRecord
  has_one_attached :avatar 
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }



end
