class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :notifications

  geocoded_by :address
  after_validation :geocode

  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :address, presence: true

  self.per_page = 15

  default_scope -> { order('created_at DESC') }
end
