class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  has_many :notifications

  before_create :setphoto


  def setphoto
  	if self.email.start_with?('a','b','c','1')
  		@userphoto = "bluetruck.png"
    elsif self.email.start_with?('d','e','f','2')
      @userphoto = "greencar.png"
    elsif self.email.start_with?('g','h','i','3')
      @userphoto = "greycar.png"
    elsif self.email.start_with?('j','k','l','4','5')
      @userphoto = "orangecar.png"
    elsif self.email.start_with?('m','n','o','p','6','7')
      @userphoto = "purplecar.png"
    elsif self.email.start_with?('q','r','s','t','8')
      @userphoto = "redcar.png"
    elsif self.email.start_with?('t','u','v','w','9')
      @userphoto = "tealcar.png"
    elsif self.email.start_with?('x','y','z','0')
      @userphoto = "yellowcar.png"
  	end

  	self.attributes = {userphoto: @userphoto}
  end
end
