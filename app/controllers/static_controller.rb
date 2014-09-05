class StaticController < ApplicationController
  def index
  	@users = User.all
  end

  def aboutus
  end

  def contactus
  end
end
