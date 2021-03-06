class SessionsController < ApplicationController
	def create 
		user= User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id]= user.id 
			redirect_to '/events'
		else
			flash[:login_error]= "Invalid Email or password"
			redirect_to '/'
		end
	end 
	def destroy
		session[:user_id]= nil
		redirect_to '/'
	end
end
