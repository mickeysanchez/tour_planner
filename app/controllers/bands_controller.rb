class BandsController < ApplicationController
  def index
    @bands = current_user.bands
  end
  
  def show
    @band = Band.find(params[:id])
    # @events = @band.shows.includes(:venue)
    # 
    # @event = Event.new
    # @event.band_id = @band.id
  end
  
  def create
    @band = Band.new(params[:band])
    # how to do this better?
    if @band.save
      band_membership = BandMembership.new(params[:band_membership]);
      band_membership.member_id = current_user.id
      band_membership.band_id = @band.id
      band_membership.admin = true
      band_membership.save
      
      redirect_to :back
    else
      render json: @band.errors
    end
  end 
  
  def destroy
    band = Band.find(params[:id])
    band.destroy
    redirect_to :back
  end
end
