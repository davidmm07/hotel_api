class CreateRoomTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :room_types do |t|
      t.timestamps
      t.integer :level_room_type
      t.string :description
      t.integer :max_capacity
    end
  end
end
