class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_host
  helper_method :current_user

  def check_host
	  if request.host.split('.')[0] == 'www'
	    redirect_to "http://" + request.host.gsub('','www.')
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
