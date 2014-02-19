class ToursController < ApplicationController
  before_filter :require_signed_in!
  
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
  
  def show
    @tour = Tour.find(params[:id])
  end
  
  def destroy 
    @tour = Tour.find(params[:id])
    @tour.destroy
    redirect_to @tour.band
  end
end
