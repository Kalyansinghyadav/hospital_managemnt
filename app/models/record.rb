class Record < ApplicationRecord
  belongs_to :admit_patient
  belongs_to :doctor
end
