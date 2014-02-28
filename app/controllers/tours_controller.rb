class ToursController < ApplicationController
  before_filter :require_signed_in!, except: [:map_embed_data, :remove_event]
  
  include ToursHelper
  
  def show
    @tour = Tour.find(params[:id])
    @geo_data = geo_data_tour(@tour)
    @event_remove = true
  end
  
  def new
    @tour = Tour.new
    @band = Band.find(params[:band_id])
  end

  def create
    @tour = Tour.new(params[:tour])
    
    if @tour.save
      notify_tour_create(@tour)
      flash[:success] = ["Tour Created!"]
      redirect_to @tour
    else
      @band = Band.find(params[:band_id])
      flash.now[:errors] = @tour.errors.full_messages
      render :new
    end
  end
  
  def edit
    @tour = Tour.find(params[:id])
    @band = Band.find(params[:band_id])
  end
  
  def update
    @tour = Tour.find(params[:id])
    
    if @tour.update_attributes(params[:tour])
      notify_tour_update(@tour)
      flash[:success] = ["Tour Updated!"]
      redirect_to @tour
    else
      @band = @tour.band
      flash.now[:errors] = @tour.errors.full_messages
      render :edit
    end
  end
  
  def destroy 
    @tour = Tour.find(params[:id])
    band = @tour.band
    if @tour.admin_user?(current_user)
      notify_tour_destroy(@tour)
      @tour.toggle!(:active)
      flash[:success] = ["Tour deleted."]
    end
    redirect_to current_user
  end
  
  def remove_event
    if session[:token] == "demo"
      events = JSON.parse(cookies[:demo_tour])
      venues = JSON.parse(cookies[:demo_venues])
      
      event_objects = []
      venue_objects = []
      
      events.each_with_index do |event, i|
        event_obj = Event.new
        event_obj.id = event["id"]
        event_obj.date = event["date"]
        venue_obj2 = Venue.new
        venue_obj2.id = venues[i]["id"]
        venue_obj2.lat = venues[i]["lat"]
        venue_obj2.lon = venues[i]["lon"]
        venue_obj2.name = venues[i]["name"]
        
        event_obj.venue = venue_obj2
        event_objects << event_obj
        venue_objects << venue_obj2
      end
      
      # event_objects.delete_if { |event| event.id.to_i == params["event_id"].to_i}
      
      cookies[:demo_tour] = nil
      cookies[:demo_tour] = event_objects.to_json
      cookies[:demo_venues] = nil
      cookies[:demo_venues] = venue_objects.to_json
      
      # render partial: 'tours/map', 
      #        locals: { geo_data: geo_data_events(event_objects, 
      #                  up_to_date: false, 
      #                  event_links: false, 
      #                  ticket_links: false) }, 
      #        layout: false
      
      render partial: 'tours/map', 
             locals: { geo_data: geo_data_events(event_objects, 
                       up_to_date: false, 
                       event_links: false, 
                       ticket_links: false) }, 
             layout: false
    else
      @tour = Tour.find(params[:id])
      @event = Event.find(params[:event_id])
      @event.tour_id = nil
      if @tour.admin_user?(current_user) && @event.save
        if request.xhr?
          render partial: 'tours/map', locals: { geo_data: geo_data_tour(@tour) }, layout: false
        else
          redirect_to(@tour)
        end
      end
    end
  end
  
  def map_embed_data
    allow_outside_access
    render json: 
    geo_data_tour(
      Tour.find(params[:id]), 
      up_to_date: true, 
      event_links: false, 
      ticket_links: true), 
    status: :ok
  end
  
  def distance
    render text: get_distance(Tour.find(params[:id]))
  end
end
