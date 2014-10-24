class Post < ActiveRecord::Base
  belongs_to :user
  

  
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :location, presence: true
  default_scope -> { order('created_at DESC') }
end
