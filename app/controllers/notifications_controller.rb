class NotificationsController < ApplicationController
  def index
	@notifications = Notification.where(user_id: current_user.id)
	@notifications.each do |notification|
	  notification.update_attribute(:read, true)
	end
  end
end
