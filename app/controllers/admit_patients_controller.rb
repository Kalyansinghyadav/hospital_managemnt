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

	def edit
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
		patient.disease = params[:admit_patient][:disease]
		patient.save
		redirect_to "/admit_patients"
	end

	def destroy
		@admit_patient = AdmitPatient.find_by(id:params[:id])
		@admit_patient.destroy
		redirect_to "/admit_patients"
	end

	def update
		@admit_patient = AdmitPatient.find_by(id:params[:id])
		if @admit_patient.update(name:params[:admit_patient][:name], age:params[:admit_patient][:age],
			address:params[:admit_patient][:address],contact_no:params[:admit_patient][:contact_no],
			bed_no:params[:admit_patient][:bed_no],room_id:params[:admit_patient][:room_id],
			disease:params[:admit_patient][:disease])
		   redirect_to admit_patients_path
		end
	end
end
