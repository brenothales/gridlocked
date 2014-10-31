class StaticController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
  	@posts = Post.all
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
