class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  has_many :notifications

  before_create :setphoto


  def setphoto
  	if self.email.start_with?('a','b','c','d','e','1','2')
  		@userphoto = "gc.jpg"
    elsif self.email.start_with?('f','g','h','i','j','3','4')
      @userphoto = "oc.jpg"
    elsif self.email.start_with?('k','l','m','n','o','5','6')
      @userphoto = "pc.jpg"
    elsif self.email.start_with?('p','q','r','s','t','7','8')
      @userphoto = "plc.jpg"
    elsif self.email.start_with?('u','v','w','x','y','z','9','0')
      @userphoto = "tc.jpg"
  	end

  	self.attributes = {userphoto: @userphoto}
  end
end
