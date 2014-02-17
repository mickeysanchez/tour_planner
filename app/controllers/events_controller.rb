class EventsController < ApplicationController
  before_filter :require_signed_in!
  
  def index
    @events = Event.all
  end
  
  def create
    # @event = Event.new(params[:event])
 #    @venue = @event.build_venue(params[:venue])
 #    fail
 
    @venue = Venue.new(params[:venue])
    @event = @venue.events.new(params[:event])
    @event.band_id = params[:band_id]
    
    if @venue.save
      redirect_to :back
    else
      render json: @event.errors
    end
  end
  
  def index
    @events = Event.all
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to :back
  end
end
