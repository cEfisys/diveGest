class CreateGearTypes < ActiveRecord::Migration
  def change
    create_table :gear_types do |t|
      t.string :description
      t.string :caracteristics
      t.float :rental_price

      t.timestamps null: false
    end
  end
end
