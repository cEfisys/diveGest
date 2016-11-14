class CreateDiveServices < ActiveRecord::Migration
  def change
    create_table :dive_services do |t|
      t.date :date
      t.string :notes
      t.belongs_to :boat, index: true, null: false

      t.timestamps null: false


    end
  end
end
