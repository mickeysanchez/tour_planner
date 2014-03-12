class SessionsController < ApplicationController
  before_filter :require_signed_out!, only: [:new, :create]
  before_filter :require_signed_in!, only: [:destroy]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password])
      
    if @user
      sign_in(@user)
      flash[:success] = ["Welcome back #{@user.email}!"]
      redirect_to user_url(@user)
    else
      @user = User.new(params[:user])
      flash.now[:errors] = 
      ["Looks like we couldn't find a user with those credentials. 
        Are you sure you got it right?"]
      render :new
    end
  end
  
  def facebook_login
    redirect_to login_url
  end
  
  def destroy
    sign_out
    redirect_to login_url
  end
end
