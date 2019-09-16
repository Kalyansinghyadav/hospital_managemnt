class RemoveMedicineRefToRecord < ActiveRecord::Migration[6.0]
  def change
  	remove_reference :records, :medicine, index:true,foreign_key:true
  end
end
