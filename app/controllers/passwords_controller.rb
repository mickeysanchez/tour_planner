class PasswordsController < ApplicationController
  before_filter :require_signed_in!
  before_filter :authorized_user!
  
  def update
    u = User.find(params[:user_id])
    if u.change_password!(params[:user][:old_password], params[:user][:new_password])
      flash[:success] = ["Password changed successfully!"]
    else
      flash[:errors] = u.errors.full_messages
    end
    
    redirect_to edit_user_url(current_user)
  end
end