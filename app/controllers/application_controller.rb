require 'addressable/uri'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user, :signed_in?
  
  private
  
  def allow_outside_access
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
    headers['Access-Control-Max-Age'] = "1728000"
  end
  
  def authorized_user!
    unless current_user == User.find(params[:user_id])
      redirect_to current_user || login_url
    end
  end
  
  def current_user
    return nil unless session[:token]
    @current_user ||= User.find_by_token(session[:token])
  end
  
  def signed_in?
    !!current_user
  end
  
  def sign_in(user)
    @current_user = user
    session[:token] = @current_user.reset_session_token!
  end
  
  def sign_out
    current_user.try(:reset_session_token!)
    session[:token] = nil
  end
  
  def require_signed_in!
    redirect_to login_url unless signed_in?
  end
  
  def require_signed_out!
    redirect_to user_url(current_user) if signed_in?
  end
end
