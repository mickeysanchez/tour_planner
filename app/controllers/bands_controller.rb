class BandsController < ApplicationController
  include BandsHelper
  include EventsHelper
  include NotificationsHelper

  before_filter :require_signed_in!, except: [:map_embed_data]
  
  def search 
    @search_criteria = params[:search]
    @bands = Band.search_by_name(@search_criteria)
  end
  
  def index
    @bands = Band.all
  end
  
  def show
    @band = Band
    .includes(:tours, :band_memberships, :events)
    .find(params[:id])
    
    @events = @band.events
    @tours = @band.tours
  end
  
  def new
    @band = Band.new
  end
  
  def create
    @band = Band.new(params[:band])
    
    begin 
      Band.transaction do
        @band.save!
        
        band_membership = @band.band_memberships.new(params[:band_membership]);
        band_membership.member = current_user
        band_membership.toggle(:admin)
        band_membership.save!
        
        flash[:success] = ["Your band has been let loose on the world!"]
        redirect_to band_url(@band)
      end
    rescue
      flash[:errors] = @band.errors.full_messages
      redirect_to new_band_url
    end
  end 
  
  def edit
    @band = Band.find(params[:id])
  end
  
  def update
    @band = Band.find(params[:id])
    @band.assign_attributes(params[:band])
    
    changes = @band.changes
  
    if current_user.is_band_admin?(@band) && @band.save
      membership = @band.find_membership(current_user)
      membership.update_attributes(params[:band_membership])
      
      notify_band_update(@band, changes)
      
      if request.xhr?
        render text: band.image.url(:thumb)
      else
        flash[:success] = ["Band deets updated!"]
        redirect_to band_url(@band)
      end
    else
      flash.now[:errors] = @band.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    band = Band.find(params[:id])
    
    notify_band_destroy(band)
    
    band.toggle!(:active)
    flash[:success] = ["Band was destroyed"]
    redirect_to current_user
  end
  
  def grab_image
    band = Band.find(params[:band_id])
    
    if grab_image_from_seat_geek?(band)
      flash[:success] = ["Image grabbed."]
      notify_band_image_grab(band)
      
      if request.xhr?
        render text: band.image.url(:thumb), status: 200
      else
        redirect_to band
      end
    else
      if request.xhr?
        render text: '/assets/user_missing.png' 
      else
        flash[:errors] = ["Couldn't find that image. Sorry."]
        redirect_to band
      end
    end
  end
  
  def map_embed_data
    allow_outside_access
    render json: 
      geo_data_events(
        Band.find(params[:band_id]).events, 
        up_to_date: true, 
        event_links: false, 
        ticket_links: true), 
        status: :ok
  end
end
