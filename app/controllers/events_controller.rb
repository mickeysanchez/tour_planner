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
    @geo_data = geo_data(@event)
  end
  
  def new
    @band = Band.find(params[:band_id])
    @event = Event.new
  end
  
  def create
    if params[:venue][:id].empty?   
      @venue = Venue.new(params[:venue])
    else
      @venue = Venue.find(params[:venue][:id])
    end
    
    @event = @venue.events.new(params[:event])
    @event.band_id = params[:band_id]
    
    if params[:tour][:id].empty? && !params[:tour][:name].empty?
      @tour = Tour.new(params[:tour])
    elsif !params[:tour][:id].empty?
      @tour = Tour.find(params[:tour][:id])
    else
      @tour = nil
    end
    
    Event.transaction do
      begin 
        if @tour 
          @event.tour = @tour
          @tour.save!
        end
        
        @venue.grab_coordinates
        @venue.save!
        flash[:success] = ["New Show Created!"]
        redirect_to @event
      rescue
        flash[:errors] =  @event.errors.full_messages + @venue.errors.full_messages  
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
    if params[:venue][:id].empty?   
      @venue = Venue.new(params[:venue])
    else
      @venue = Venue.find(params[:venue][:id])
    end
    
    @event = @venue.events.new(params[:event])
    @event.band_id = params[:band_id]
    
    if params[:tour][:id].empty? && !params[:tour][:name].empty?
      @tour = Tour.new(params[:tour])
    elsif !params[:tour][:id].empty?
      @tour = Tour.find(params[:tour][:id])
    else
      @tour = nil
    end
    
    Event.transaction do
      begin 
        if @tour 
          @event.tour = @tour
          @tour.save!
        end
        
        @venue.grab_coordinates
        @venue.save!
        flash[:success] = ["Show details updated!"]
        redirect_to event_url(@event)
      rescue
        flash[:errors] =  @event.errors.full_messages + @venue.errors.full_messages
        redirect_to :back
      end
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to @event.band
  end
  
  def grab_shows
    band = Band.find(params[:band_id])
    
    if grab_from_seat_geek?(band)
      flash[:success] = ["Shows grabbed."]
    else
      flash[:errors] = ["No shows on Seat Geek for that band. Sorry."]
    end
    
    redirect_to band_events_url(band)
  end
  
  def grab_bands_in_town_shows
    # bands_in_town  http://api.bandsintown.com/artists/Justin%20Timberlake/events.json?api_version=2.0&app_id=YOUR_APP_ID
  end
  

end
