class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.timestamps
      t.integer :number_room
      t.string :name_room
      t.string :description
      t.references :room_type, foreign_key: true
    end
  end
end
