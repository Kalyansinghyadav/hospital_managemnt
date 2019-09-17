class CreateAdmitPatients < ActiveRecord::Migration[6.0]
  def change
    create_table :admit_patients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.integer :contact_no
      t.references :room, null: false, foreign_key: true
      t.integer :bed_no

      t.timestamps
    end
  end
end
