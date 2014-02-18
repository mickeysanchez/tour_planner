class UsersController < ApplicationController
  before_filter :require_signed_in!, only: [:show, :edit, :update]
  before_filter :require_signed_out!, only: [:create, :new]
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      sign_in(@user)
      flash[:success] = ["Welcome to tour_planner!"]
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  def show
    @band = Band.new
    if params[:id]
      @user = User.find(params[:id])
    else
      redirect_to user_url(current_user)
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    
    if params[:pw]
      # password change
      if @user.is_password?(params[:pw][:old_password])
        if params[:pw][:new_password].empty?
          flash[:errors] = ["You can't make a blank password"] 
        else
          if @user.change_password!(params[:pw][:old_password], params[:pw][:new_password])
            flash[:success] = ["Password changed successfully!"]
          else
            flash[:errors] = @user.errors.full_messages
          end
        end
      else
        flash[:errors] = ["You entered your current password incorrectly."]
      end
    else
      # email update
      if @user.update_attributes(params[:user])
        flash[:success] = ["Email updated successfully!"]
      else
        flash[:errors] = @user.errors.full_messages
      end
    end
  
    redirect_to edit_user_url(@user)
  end
end
