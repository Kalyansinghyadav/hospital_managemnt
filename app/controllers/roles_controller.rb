class RolesController < ApplicationController

	def index
		@roles = Role.all
	end

	def new 

		@role = Role.new
	end
	
	def create
		role = Role.new
		role.role_name = params[:role][:role_name]
		role.save
		redirect_to "/roles"
	end

	def edit
	    @role = Role.find(params[:id])	
	end

	def update
		@role = Role.find(params[:id])
		if @role.update(role_name: params[:role][:role_name])
			redirect_to "/roles"
		else
			render "edit"
		end
		
	end

	def destroy
		@role = Role.find(params[:id])
		@role.destroy
		redirect_to "/roles"
	end

end
