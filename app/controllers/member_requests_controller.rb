class MemberRequestsController < ApplicationController
  before_filter :authorized_user!, only: [:index]
  
  def index
  end
  
  def create
    @band = Band.find(params[:band_id])
    @band.member_requests.create({requester_id: current_user.id})
    flash[:success] = ["Member Request Sent!"]
    redirect_to @band
  end
  
  def deny
    mr = MemberRequest.find(params[:id])
    mr.status = "denied"
    mr.save
    flash[:success] = ["Member request denied"]
    redirect_to user_notifications_url(current_user)
  end
end
