class BandsController < ApplicationController
  def index
    @bands = Band.all
    @band = Band.new
  end
  
  def show
    @band = Band.find(params[:id])
    @events = @band.shows.includes(:venue)
    
    @event = Event.new
    @event.band_id = @band.id
  end
  
  def create
    @band = Band.new(params[:band])
    @band.save
    
    redirect_to band_path(@band)
  end 
end
