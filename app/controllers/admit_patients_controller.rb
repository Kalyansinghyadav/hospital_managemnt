class AdmitPatientsController < ApplicationController

	def new
		@admit_patient = AdmitPatient.new
	end

	def index
		@admit_patients = AdmitPatient.all
	end

	def show
		@admit_patient = AdmitPatient.find_by(id:params[:id])
	end

	def create
		patient = AdmitPatient.new
		patient.name = params[:admit_patient][:name]
		patient.age = params[:admit_patient][:age]
		patient.address = params[:admit_patient][:address]
		patient.contact_no = params[:admit_patient][:contact_no]
		patient.bed_no = params[:admit_patient][:bed_no]
		patient.room_id = params[:admit_patient][:room_id]
		patient.save
		redirect_to "/admit_patients"
	end

	def destroy
		@admit_patient = AdmitPatient.find_by(id:params[:id])
		@admit_patient.destroy
		redirect_to "/admit_patients"
	end
end
