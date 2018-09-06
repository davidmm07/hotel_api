class CreateOccupiedRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :occupied_rooms do |t|
      t.timestamp :check_in
      t.timestamp :check_out
      t.references :room, foreign_key: true
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
