class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_type
      t.integer :no_of_beds

      t.timestamps
    end
  end
end
