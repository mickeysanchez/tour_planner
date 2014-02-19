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
end
