class ChangeContactNoLimit < ActiveRecord::Migration[6.0]
  def change
  	change_column :doctors, :contact_no, :integer , limit: 8 
  end
end
