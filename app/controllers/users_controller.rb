class UsersController < ApplicationController
	def login
		
	end
	def login_auth
		user = User.find_by(username: params[:username])
		if user.password = params[:password]
			redirect_to '/doctors'
		else
			redirect_to '/users/signup'
		end
		
	end

	def signup
		
	end

	def create
		user = User.create(username: params[:username],password: params[:password])
		if user
			redirect_to '/doctors'
		else
			redirect_to '/users/signup'
		end
		
	end
end
