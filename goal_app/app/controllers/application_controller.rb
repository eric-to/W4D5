class ApplicationController < ActionController::Base

  def log_in_user(user)
    user.reset_session_token!
    current_user 
  end
  
  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end
  
  def ensure_log_in
    render json: {ERROR: "This is an error" } unless @current_user
  end
end