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
      redirect_to user_url(@user)
    else
      render json: @user.errors
    end
  end
  
  def show
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
      if @user.is_password?(params[:pw][:old_password])
        @user.password = params[:pw][:new_password]
        if !@user.save
          flash[:errors] = @user.errors.full_messages
        end
      else
        flash[:errors] = ["You entered your current password incorrectly."]
      end
    else
      @user.update_attributes(params[:user])
      flash[:errors] = @user.errors.full_messages
    end
  
    redirect_to edit_user_url(@user)
  end
end
