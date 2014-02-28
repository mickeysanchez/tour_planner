class PasswordsController < ApplicationController
  before_filter :require_signed_in!
  before_filter :authorized_user!
  
  def update
    u = User.find(params[:user_id])
    if u.email != "demo-user@tourplanner.co" && u.change_password!(params[:user][:old_password], params[:user][:new_password])
      flash[:success] = ["Password changed successfully!"]
    else
      flash[:errors] = u.errors.full_messages
      flash[:errors] += ["Don't touch that demo user you!"]
    end
    
    redirect_to edit_user_url(current_user)
  end
end