class CreateDiveServiceSpots < ActiveRecord::Migration
  def change
    create_table :dive_service_spots do |t|
      t.belongs_to :dive_service, index: true, null: false
      t.belongs_to :dive_spot, index: true, null: false

      t.timestamps null: false

    end
  end
end
