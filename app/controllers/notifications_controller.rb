class NotificationsController < ApplicationController
  def index
	@notifications = Notification.where(:user_id => current_user.id)
	@notifications.each do |notification|
	  notification.update_attribute(:read, true)
	end
  end

  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
    redirect_to :back
  end
end
