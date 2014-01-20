class VenuesController < ApplicationController
  def index 
    @venues = Venue.all
    @venue = Venue.new
  end
  
  def create
    @venue = Venue.new(params[:venue])
    @venue.save
    
    redirect_to :back
  end
  
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    
    redirect_to :back
  end
end