class BandsController < ApplicationController
  before_filter :require_signed_in!
  
  def index
    @bands = Band.all
  end
  
  def show
    @band = Band.includes(:tours, events: [:venue]).find(params[:id])
    @events = @band.events
    @tours = @band.tours
    
    @event = Event.new
    @event.band_id = @band.id
  end
  
  def create
    @band = Band.new(params[:band])
    
    Band.transaction do
      begin 
        @band.save!
        
        band_membership = BandMembership.new(params[:band_membership]);
        band_membership.member = current_user
        band_membership.band = @band
        band_membership.admin = true
        band_membership.save!
        
        flash[:success] = ["Your band has been let loose on the world!"]
        redirect_to :back
      rescue
        flash[:errors] = @band.errors.full_messages
        redirect_to :back
      end
    end
  end 
  
  def edit
    @band = Band.find(params[:id])
  end
  
  def update
    @band = Band.find(params[:id])
    
    if @band.update_attributes(params[:band])
      membership = @band.find_membership(current_user)
      membership.update_attributes(params[:band_membership])
      
      flash[:success] = ["Band deets updated!"]
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    band = Band.find(params[:id])
    band.destroy
    flash[:success] = ["Band was destroyed"]
    redirect_to current_user
  end
end
