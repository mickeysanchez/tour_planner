class BandsController < ApplicationController
  include BandsHelper
  include EventsHelper


  before_filter :require_signed_in!, except: [:map_embed_data]
  
  def search 
    @search_criteria = params[:search]
    @bands = Band.search_by_name(@search_criteria)
    render 'bands/search'
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
        
        grab_image_from_seat_geek?(@band)
        
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
    
    changes = ""
    if @band.name_changed?
      changes << "<li> Name changed from #{@band.name_was} to 
                 <a href='#{band_url(@band)}'> #{@band.name}. </a> </li>"  
    end
    if @band.image_file_name_changed?
      changes << "<li> <a href='#{band_url(@band)}'> #{@band.name} image changed. </a> </li>"   
    end
  
    if current_user.is_band_admin?(@band) && @band.save
      membership = @band.find_membership(current_user)
      membership.update_attributes(params[:band_membership])
      
      @band.members.each do |member|
        next if member == current_user 
        member.notifications.create({ 
        message: "<a href='#{user_url(current_user)}'> #{current_user.email} </a> made
                  changes to your band:  
                  <ul> #{changes} </ul>"
        })
      end
      
      flash[:success] = ["Band deets updated!"]
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    band = Band.find(params[:id])
    
    band.members.each do |member|
      next if member == current_user
      member.notifications.create({
        message: "Your band, #{band.name} was deleted"
      })
    end
    
    band.destroy
    flash[:success] = ["Band was destroyed"]
    redirect_to current_user
  end
  
  def grab_image
    band = Band.find(params[:band_id])
    
    if grab_image_from_seat_geek?(band)
      flash[:success] = ["Image grabbed."]

      band.admins.each do |admin|
        next if admin == current_user 
        admin. notifications.create({ 
          message: "<a href='#{band_url(band)}'> #{band.name} image changed. </a>"
        })
      end
    else
      flash[:errors] = ["Couldn't find that image. Sorry."]
    end
    
    redirect_to band
  end
  
  def map_embed_data
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
    headers['Access-Control-Max-Age'] = "1728000"
    render json: geo_data_events(Band.find(params[:band_id]).events, true, false, true), status: :ok
  end
end
