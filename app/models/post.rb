class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :notifications

  
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :location, presence: true
  default_scope -> { order('created_at DESC') }
  	after_create :create_notification

  private

  def create_notification
    Notification.create(
      post_id: self,
      user_id: self.user_id,
      comment_id: nil,
      read: false
    )
  end
end
