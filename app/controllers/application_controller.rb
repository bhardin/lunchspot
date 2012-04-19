class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :current_location

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private
  def current_location
  	if ENV["RAILS_ENV"] == "production"
			request.remote_ip
		else
			"24.7.53.200"
  	end
  end
end
