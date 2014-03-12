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
    temboo_session = TembooSession.new('mickeysanchez', 'TourPlanner', ENV['TEMBOO'])
    app_id = ENV['FB_ID']
    app_secret = ENV['FB_SECRET']
    $callback_id = '' # Leave this empty to start out.
    
    oauth_init_choreo = Facebook::OAuth::InitializeOAuth.new(temboo_session)

    # Get an InputSet object for the choreo
    oauth_init_inputs = oauth_init_choreo.new_input_set()

    # Set inputs
    oauth_init_inputs.set_AppID(app_id)
    oauth_init_inputs.set_ForwardingURL(facebook_finalize_url)
    
    oauth_init_results = oauth_init_choreo.execute(oauth_init_inputs)
    
    # Populate the global callback ID.
    $callback_id = oauth_init_results.get_CallbackID()
    
    # Proceed to the authorization URL to grant this app access to your
    # Facebook info.
    redirect_to oauth_init_results.get_AuthorizationURL
  end
  
  def facebook_finalize
    # Complete the OAuth process.
    temboo_session = TembooSession.new('mickeysanchez', 'TourPlanner', ENV['TEMBOO'])
    oauth_final_choreo = Facebook::OAuth::FinalizeOAuth.new(temboo_session)
    app_id = ENV['FB_ID']
    app_secret = ENV['FB_SECRET']
    
    oauth_final_inputs = oauth_final_choreo.new_input_set()
    oauth_final_inputs.set_AppID(app_id)
    oauth_final_inputs.set_AppSecret(app_secret)
    oauth_final_inputs.set_CallbackID($callback_id)

    oauth_final_results = oauth_final_choreo.execute(oauth_final_inputs)

    # Using the token obtained in the OAuth process, display user info.
    user_choreo = Facebook::Reading::User.new(temboo_session)
    
    user_inputs = user_choreo.new_input_set()
    user_inputs.set_AccessToken(oauth_final_results.get_AccessToken())
    user_results = user_choreo.execute(user_inputs)
    user_info = JSON.parse(user_results.get_Response())
    
    user = User.find_or_create_by_email_and_password_digest({
      email: user_info["name"],
      password: user_info["id"]
    })
    
    sign_in(user)
    
    redirect_to user
  end
  
  def destroy
    sign_out
    redirect_to login_url
  end
end
