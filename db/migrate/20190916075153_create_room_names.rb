class CreateRoomNames < ActiveRecord::Migration[6.0]
  def change
    create_table :room_names do |t|
      t.string :room_type
      t.integer :no_of_beds

      t.timestamps
    end
  end
end
