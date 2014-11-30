class StaticController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
    if @user
    	@posts = Post.near([request.location.latitude, request.location.longitude] ,25)
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
