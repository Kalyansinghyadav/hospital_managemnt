class AddColumnToDoctors < ActiveRecord::Migration[6.0]
  def change
  	add_column :doctors, :status, :boolean
  end
end
