class AppointmentsController < ApplicationController

	def new
	   @appointment = Appointment.new	
	end

	def index
		@appointments = Appointment.all
	end

	def create
		appointment = Appointment.new
		appointment.doctor_id = params[:appointment][:doctor_id]
		appointment.patient_id = params[:appointment][:patient_id]
		appointment.date_of_appointment = params[:appointment][:date_of_appointment]
		appointment.save
		redirect_to "/appointments"
	end

end
