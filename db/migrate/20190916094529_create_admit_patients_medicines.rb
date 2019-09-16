class CreateAdmitPatientsMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :admit_patients_medicines, id: false do |t|
      t.belongs_to :admit_patient
      t.belongs_to :medicine
      t.timestamps
    end
  end
end
