class UsersController < ApplicationController
  before_filter :require_signed_in!, only: [:show]
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
end
