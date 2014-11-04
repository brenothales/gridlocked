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
    @post = Post.find_by(self.post_id)
    @user = User.find_by(@post.user_id).id
    if @user != self.user_id
      Notification.create(
        post_id: self.post_id,
        user_id: @user,
        comment_id: self,
        read: false
      )
    end
  end
end
