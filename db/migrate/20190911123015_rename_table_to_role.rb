class RenameTableToRole < ActiveRecord::Migration[6.0]
  def change
  	rename_table :roles, :departments
  	rename_column :departments, role_name:, :name
  end
end
