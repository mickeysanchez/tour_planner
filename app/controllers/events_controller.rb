class EventsController < ApplicationController
  include EventsHelper
  
  before_filter :require_signed_in!
  
  def index
    if params[:band_id]
      @band = Band.includes(:events, :band_memberships).find(params[:band_id])
      @events = @band.events
      @geo_data = geo_data_events(@events)
    else
      @events = Event.includes(:band, :venue)
      @geo_data = geo_data_events(@events)
    end
  end
  
  def show
    @event = Event.includes(:band, :venue).find(params[:id])
    @geo_data = geo_data(@event).to_json.html_safe
  end
  
  def new
    @band = Band.find(params[:band_id])
    @event = Event.new
  end
  
  def create    
    @venue = new_or_existing_venue
    @venue.grab_coordinates
    @event = @venue.events.new(params[:event])
    @event.band_id = params[:band_id]
    @tour = conditional_tour(@event)
    
    Event.transaction do
      begin
        @tour.save! if @tour
        @venue.save!
        
        notify_event_create(@event)
        
        flash[:success] = ["New Show Created!"]
        redirect_to @event
      rescue
        flash[:errors] =  @venue.errors.full_messages  
        flash[:errors] += @tour.errors.full_messages if @tour
        redirect_to new_band_event_url(params[:band_id])
      end
    end
  end
  
  def edit
    @band = Band.find(params[:band_id])
    @event = Event.find(params[:id])
  end
  
  def update
    @venue = new_or_existing_venue
    @event = Event.find(params[:id])
    @event.band_id = params[:band_id]
    @tour = conditional_tour(@event)
    
    Event.transaction do
      begin 
        @tour.save if @tour
        
        @event.assign_attributes(params[:event])
        @event.venue = @venue
        changes = @event.changes 
        @event.save!
        notify_event_update(@event, changes)
            
        @venue.grab_coordinates
        @venue.save!
        
        flash[:success] = ["Show details updated!"]
        redirect_to event_url(@event)
      rescue
        flash[:errors] = @event.errors.full_messages + @venue.errors.full_messages
        redirect_to :back
      end
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    notify_event_destroy(@event) 
    @event.toggle!(:active)
    
    redirect_to @event.band
  end
  
  def grab_shows
    band = Band.find(params[:band_id])
    
    if tour = grab_from_seat_geek?(band)
      flash[:success] = ["Shows grabbed."]
      notify_grab_shows(band)
      redirect_to :back
    else
      flash[:errors] = ["No shows on Seat Geek for that band. Sorry."]
      redirect_to band_url(band)
    end
  end
  
end
