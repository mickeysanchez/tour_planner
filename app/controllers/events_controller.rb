require 'addressable/uri'

class EventsController < ApplicationController
  include EventsHelper
  
  before_filter :require_signed_in!
  
  def index
    if params[:band_id]
      @band = Band.includes(:events).find(params[:band_id])
      @events = @band.events
      @geo_data = geo_data_events(@events)
    else
      @events = Event.order('date ASC').includes(:band, :venue)
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
        if @tour 
          @tour.save!
        end
        
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
        if @tour 
          @tour.save!
        end
        
        @event.assign_attributes(params[:event])
        @event.venue = @venue
        changes = record_changes(@event)
              
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
    
    @event.destroy
    
    redirect_to @event.band
  end
  
  def grab_shows
    band = Band.find(params[:band_id])
    
    if grab_from_seat_geek?(band)
      flash[:success] = ["Shows grabbed."]
    
      notify_grab_shows(band)
    else
      flash[:errors] = ["No shows on Seat Geek for that band. Sorry."]
    end
    
    redirect_to band_events_url(band)
  end
  
  def grab_bands_in_town_shows
    # bands_in_town  
    # http://api.bandsintown.com/artists/Justin%20Timberlake/events.json?api_version=2.0&app_id=YOUR_APP_ID
  end
  
end
