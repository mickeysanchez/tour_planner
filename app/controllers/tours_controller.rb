class ToursController < ApplicationController
  before_filter :require_signed_in!
  
  def new
    @tour = Tour.new
    @band = Band.find(params[:band_id])
  end
  
  def edit
    @tour = Tour.find(params[:id])
  end
  
  def create
    @tour = Tour.new(params[:tour])
    if @tour.save
      redirect_to @tour
    else
      flash.now[:errors] = @tour.errors.full_messages
    end
  end
  
  def show
    @tour = Tour.find(params[:id])
  end
  
  def destroy 
    Tour.find(params[:id]).destroy
    redirect_to :back
  end
end
