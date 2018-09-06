class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :weekday

      t.timestamps
    end
  end
end
