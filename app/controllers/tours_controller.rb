class ToursController < ApplicationController
  before_filter :require_signed_in!, except: [:map_embed_data]
  
  include ToursHelper
  
  def show
    @tour = Tour.find(params[:id])
    @geo_data = geo_data_tour(@tour)
    @distance = get_distance(@tour)
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
      redirect_to band
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
end
