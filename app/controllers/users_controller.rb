class UsersController < ApplicationController
  before_filter :require_signed_in!, except: [:create, :new]
  before_filter :require_signed_out!, only: [:create, :new]
  
  def index
    @users = User.all
  end
  
  def show
    @user = (params[:id]) ? User.find(params[:id]) : current_user
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
      render 'sessions/new'
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    
    if current_user == @user && @user.email != "demo-user@tourplanner.co" && @user.update_attributes(params[:user])
      flash[:success] = ["Updates Successful!"]
    else
      flash[:errors] = @user.errors.full_messages
      flash[:errors] += ["Don't touch that demo user you!"] if @user.email == "demo-user@tourplanner.co"
    end
    
    redirect_to user_url(@user)
  end
end
