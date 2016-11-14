class CreateDiveServiceMembers < ActiveRecord::Migration
  def change
    create_table :dive_service_members do |t|
      t.float :price
      t.boolean :payed
      t.string :notes
      t.belongs_to :dive_service_spot, index: true, null: false
      t.belongs_to :dive_service_member_type, index: true, null: false
      t.belongs_to :members_client, index: true, null: false

      t.timestamps null: false


    end
  end
end
