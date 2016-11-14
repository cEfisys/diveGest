class CreateDiveServiceMemberGears < ActiveRecord::Migration
  def change
    create_table :dive_service_member_gears do |t|
      t.string :notes
      t.belongs_to :gear, index: true, null: false
      t.belongs_to :dive_service_member, index: true, null: false

      t.timestamps null: false

    end
  end
end
