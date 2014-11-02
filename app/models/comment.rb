class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :notifications

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :content, presence: true
  default_scope -> { order('created_at DESC') }

	after_create :create_notification

  private

  def create_notification
    Notification.create(
      post_id: nil,
      user_id: self.user_id,
      comment_id: self,
      read: false
    )
  end
end
