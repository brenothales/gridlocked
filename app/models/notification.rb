class Notification < ActiveRecord::Base
  belongs_to :posts
  belongs_to :comments
  belongs_to :users
end
