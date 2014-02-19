class EventsController < ApplicationController
  before_filter :require_signed_in!
  
  def index
    @events = Event.order('date ASC').includes(:band, :venue)
  end
  
  def show
    @event = Event.includes(:band, :venue).find(params[:id])
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
end
