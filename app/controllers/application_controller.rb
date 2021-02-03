class ApplicationController < ActionController::Base


	helper_method :current_userss

	def current_userss

		if session[:userss_id]
		@current_userss ||= Userss.find(session[:userss_id])
		else
		@current_userss = nil
		end
	end
end
