class StaticController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
  	@posts = Post.all
  end

  def aboutus
  end

  def contactus
  end
end
