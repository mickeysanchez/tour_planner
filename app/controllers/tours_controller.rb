class ToursController < ApplicationController
  def show
    @tour = Tour.find(params[:id])
  end
  
  def destroy 
    Tour.find(params[:id]).destroy
    redirect_to :back
  end
end
