class BandsController < ApplicationController
  def index
    @bands = current_user.bands
  end
  
  def show
    # @band = Band.find(params[:id])
    # @events = @band.shows.includes(:venue)
    # 
    # @event = Event.new
    # @event.band_id = @band.id
  end
  
  def create    
    @band = current_user.bands.create(params[:band])
    if @band.valid?
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
