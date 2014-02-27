class VenuesController < ApplicationController
  include VenuesHelper
  
  before_filter :require_signed_in!
  
  def index 
    @venues = Venue.all
  end
  
  def show
    @venue = Venue.find(params[:id])
    @geo_data = geo_data(@venue)
  end
  
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    
    redirect_to :back
  end
end