class ChangeClumnToDoctors < ActiveRecord::Migration[6.0]
  def change
  	rename_column :doctors, :role_id, :department_id
  	
  end
end
