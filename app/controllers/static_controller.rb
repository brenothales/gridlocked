class StaticController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
  	@posts = Post.near([@user.current_sign_in_ip] ,10)
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
