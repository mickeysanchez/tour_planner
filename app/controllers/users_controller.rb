class UsersController < ApplicationController
  before_filter :require_signed_in!, only: [:show]
  before_filter :require_signed_out!, only: [:create, :new]
  
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
    @user = User.find(params[:id])
  end
end
