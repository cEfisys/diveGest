class CreateDiveSpots < ActiveRecord::Migration
  def change
    create_table :dive_spots do |t|
      t.string :name
      t.integer :max_depth
      t.integer :min_depth
      t.string :sea_life
      t.string :coordenads
      t.string :notes

      t.timestamps null: false
    end
  end
end
