class SessionsController < ApplicationController
	def new

	end

	def create
		userss=Userss.find_by_email(params[:email])
		if userss && userss.authenticate(params[:password])
			session[:userss_id] = userss.id
			redirect_to(action:'welcome')
			
		else
			flash.now[:alert] = "Email or password is invalid"
			render "new"
		end 
	end 

	def destroy
		session[:userss_id] = nil
		redirect_to root_url, notice: "Logged out!"
	end

    def welcome

	end
end