class VenuesController < ApplicationController
  def index 
    @venues = Venue.all
  end
  
  def show
    @venue = Venue.find(params[:id])
  end
  
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    
    redirect_to :back
  end
end