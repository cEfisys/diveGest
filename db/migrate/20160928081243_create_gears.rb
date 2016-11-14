class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :reference
      t.date :purchase_date
      t.date :sell_date
      t.string :notes
      t.belongs_to :gear_type, index: true, null: false
      t.belongs_to :gear_size, index: true, null: false

      t.timestamps null: false


    end
  end
end
