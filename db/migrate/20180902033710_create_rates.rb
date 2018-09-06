class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.references :period, foreign_key: true
      t.references :room, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
