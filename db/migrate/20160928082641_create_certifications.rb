class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :level
      t.string :notes
      t.belongs_to :certification_type, index: true, null: false

      t.timestamps null: false

    end
  end
end
