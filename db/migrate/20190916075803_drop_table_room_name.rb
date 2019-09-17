class DropTableRoomName < ActiveRecord::Migration[6.0]
  def change
  	drop_table :room_names
  end
end
