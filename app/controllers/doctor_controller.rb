class DoctorController < ApplicationController

	def new
		@doctor = Doctor.new
	end


	def index
		@doctors = Doctor.all
	end
	
	def create
		doctor = Doctor.new
		doctor.name = params[:doctor][:name]
		doctor.contact_no = params[:doctor][:contact_no]
		doctor.address = params[:doctor][:address]
		doctor.salary = params[:doctor][:salary]
		doctor.save
	end

end
