class StaticController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
    if @user
      
    	@posts = Post.near([@user.current_sign_in_ip] ,10)
    end
  end

  def aboutus
  	@users = User.all
  	@user = current_user
  end

  def contactus
  	@users = User.all
  	@user = current_user
  end
end
