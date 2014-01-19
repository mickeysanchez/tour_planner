class BandsController < ApplicationController
  def index
    @bands = Band.all
  end
  
  def show
    @band = Band.find(params[:id])
    @events = @band.events.includes(:venue)
  end
end
