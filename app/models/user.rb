class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  has_many :notifications

  before_create :setphoto


  def setphoto
	if self.email.start_with?('a','b','c','d','e','f','g','h','i','j','k','l','m','n','1','2','3','4','5')
		@userphoto = "stormtrooper.jpg"
	else
		@userphoto = "c3p0.jpg"
	end

	self.attributes = {userphoto: @userphoto}
  end
end
