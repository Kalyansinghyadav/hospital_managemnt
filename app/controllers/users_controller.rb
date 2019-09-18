class UsersController < ApplicationController
	def index
		
	end

	def new
		@user = User.new
	end

	def login
		
	end

	def create
	  user = User.new(user_params)
	 if user.save
	 	redirect_to "/session/new"
	 end
	end

	def user_params
		params.require(:user).permit(:username,:email,:dob,:gender,:password,:confirm_password)
	end
end
