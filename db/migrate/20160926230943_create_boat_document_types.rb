class CreateBoatDocumentTypes < ActiveRecord::Migration
  def change
    create_table :boat_document_types do |t|
      t.string :name
      t.string :description
      t.string :notes

      t.timestamps null: false
    end
  end
end
