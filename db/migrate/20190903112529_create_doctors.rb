class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :contact_no
      t.string :address
      t.integer :salary

      t.timestamps
    end
  end
end
