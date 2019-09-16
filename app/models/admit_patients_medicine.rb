class AdmitPatientsMedicine < ApplicationRecord
	belongs_to :admit_patients
	belongs_to :medicines
end
