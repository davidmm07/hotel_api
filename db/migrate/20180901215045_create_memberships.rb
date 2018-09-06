class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.string :name
      t.integer :tier
      t.integer :discount

      t.timestamps
    end
  end
end
