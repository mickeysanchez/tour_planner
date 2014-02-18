class EventsController < ApplicationController
  before_filter :require_signed_in!
  
  def index
    @events = Event.order('date ASC').includes(:band, :venue)
  end
  
  def create
    if params[:venue][:id].empty?   
      @venue = Venue.new(params[:venue])
    else
      @venue = Venue.find(params[:venue][:id])
    end
    @event = @venue.events.new(params[:event])
    @event.band_id = params[:band_id]
    
    if @venue.save
      redirect_to :back
    else
      render json: @event.errors
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to :back
  end
end
