class Song < ActiveRecord::Base
  belongs_to :user
  has_many :adds
  has_many :users, through: :likes
  validates :title, :artist, presence: true
  validates :title, :artist, length: { minimum: 2 }
end
