class CreateMembersClients < ActiveRecord::Migration
  def change
    create_table :members_clients do |t|
      t.string :name
      t.string :telephone
      t.date :birth_date
      t.string :mail
      t.string :facebook
      t.integer :total_dives

      t.timestamps null: false
    end
  end
end
