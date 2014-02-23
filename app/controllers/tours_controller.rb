class ToursController < ApplicationController
  before_filter :require_signed_in!, except: [:map_embed_data]
  
  include ToursHelper
  
  def show
    @tour = Tour.find(params[:id])
    @geo_data = geo_data(@tour)
    @distance = "commented out" #get_distance(@tour)
  end
  
  def new
    @tour = Tour.new
    @band = Band.find(params[:band_id])
  end

  def create
    @tour = Tour.new(params[:tour])
    if @tour.save
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
      @tour.destroy
      redirect_to band
    end
  end
  
  def map_embed_data
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
    headers['Access-Control-Max-Age'] = "1728000"
    render json: geo_data(Tour.find(params[:id]), true, false, true), status: :ok
  end
end
