class EventsController < ApplicationController
  before_filter :require_signed_in!
  
  def create
    @event = Event.new(params[:event])
    @event.band_id = params[:band_id]
    @event.save
    
    redirect_to :back
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
