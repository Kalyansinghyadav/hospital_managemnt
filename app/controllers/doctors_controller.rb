class DoctorsController < ApplicationController
 before_action :authenticate

  def authenticate
    if session[:id] ==nil
     redirect_to "/users/new"
    else
      return true
    end
    
  end
	def new
		@doctor = Doctor.new
	end

	def index
	  if params[:id]
		  department = Department.find_by(id: params[:id])
		 @doctors = department.doctors
		#if params[:id]
	     # patient = Patient.find(params[:id])
	      #@doctors = patient.doctors 
	  else  	   
          @doctors = Doctor.all.where("status=true")
      end
	end

	def show
		@doctor = Doctor.find(params[:id])
	end

    def edit
    	@doctor = Doctor.find(params[:id])
    end

	def create
		doctor = Doctor.new
		doctor.name = params[:doctor][:name]
		doctor.contact_no = params[:doctor][:contact_no]
		doctor.address = params[:doctor][:address]
		doctor.salary = params[:doctor][:salary]
		doctor.department_id = params[:doctor][:department_id]
		doctor.save
		redirect_to "/doctors"
	end
	def update
		@doctor = Doctor.find(params[:id])
		if @doctor.update(name: params[:doctor][:name], contact_no: params[:doctor][:contact_no], address:
			params[:doctor][:address],salary: params[:doctor][:salary])
		    redirect_to "/doctors"
         else
         	render "edit"
		end
	end

	def destroy
		@doctor = Doctor.find(params[:id])
		@doctor.destroy
		redirect_to "/doctors"
	end
	def disable
		doctor = Doctor.find_by(id:params[:id])
		if doctor.update(status:false)
			redirect_to "/doctors"
	    end
	end

end
