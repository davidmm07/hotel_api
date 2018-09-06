class CreateHostedAts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosted_ats do |t|
      t.references :guest, foreign_key: true
      t.references :occupied_room, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
