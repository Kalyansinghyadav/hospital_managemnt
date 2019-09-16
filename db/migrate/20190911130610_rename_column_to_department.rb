class RenameColumnToDepartment < ActiveRecord::Migration[6.0]
  def change
  	rename_column :departments, :role_name, :name
  end
end
