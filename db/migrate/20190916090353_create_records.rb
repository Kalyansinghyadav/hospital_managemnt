class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.references :admit_patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
