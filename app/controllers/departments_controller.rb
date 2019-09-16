class DepartmentsController < ApplicationController

	def index
		@departments = Department.all
	end

	def new 

		@role = Department.new
	end
	
	def create
		department = Department.new
		department.name = params[:department][:name]
		department.save
		redirect_to "/departments"
	end

	def edit
	    @department = Department.find(params[:id])	
	end

	def update
		@department = Department.find(params[:id])
		if @department.update(name: params[:department][:name])
			redirect_to "/departments"
		else
			render "edit"
		end
		
	end

	def destroy
		@department = Department.find(params[:id])
		@department.destroy
		redirect_to "/departments"
	end

end
