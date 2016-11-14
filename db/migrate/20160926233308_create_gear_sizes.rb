class CreateGearSizes < ActiveRecord::Migration
  def change
    create_table :gear_sizes do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
