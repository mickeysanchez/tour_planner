class BandsController < ApplicationController
  def index
    @bands = Band.all
  end
  
  def show
    @band = Band.find(params[:id])
    @events = @band.shows.includes(:venue)
    
    @event = Event.new
    @event.band_id = @band.id
  end
end
