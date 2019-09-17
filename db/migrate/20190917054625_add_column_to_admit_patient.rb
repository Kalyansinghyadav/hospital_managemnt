class AddColumnToAdmitPatient < ActiveRecord::Migration[6.0]
  def change
  	add_column :admit_patients, :disease, :string
  end
end
