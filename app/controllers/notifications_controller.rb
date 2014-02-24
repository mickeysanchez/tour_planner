class NotificationsController < ApplicationController
  before_filter :authorized_user!, only: [:index]
  
  def index
  end
  
  def destroy
    n = Notification.find(params[:id])
    n.destroy
    redirect_to user_notifications_url(current_user)
  end
end
