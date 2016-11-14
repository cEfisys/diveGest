class CreateDiveServiceMemberTypes < ActiveRecord::Migration
  def change
    create_table :dive_service_member_types do |t|
      t.string :description
      t.string :notes

      t.timestamps null: false
    end
  end
end
