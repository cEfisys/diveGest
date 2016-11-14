class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :mmsi
      t.string :horse_power
      t.integer :seats

      t.timestamps null: false
    end
  end
end
