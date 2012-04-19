module ApplicationHelper
	def current_location
  	if ENV["RAILS_ENV"] == "production"
			request.remote_ip
		else
			"24.7.53.200"
  	end
  end
end
