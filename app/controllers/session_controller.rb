class SessionController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.password == params[:password]
            session[:id] = user.id
		   redirect_to "/doctors"
		else
			flash[:danger] = "username and password invalid"
		   #redirect_to "/users/new"
	    end
	end

	def destroy
		session[:id] = nil
		redirect_to "/users/new"
	end
end
