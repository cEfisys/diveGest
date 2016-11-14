class CreateBoatDocuments < ActiveRecord::Migration
  def change
    create_table :boat_documents do |t|
      t.date :start_date
      t.date :end_date
      t.string :notes
      t.belongs_to :boat_document_type, index: true, null: false
      t.belongs_to :boat, index: true, null: false

      t.timestamps null: false

    end
  end
end
