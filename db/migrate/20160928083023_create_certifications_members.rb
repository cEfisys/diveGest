class CreateCertificationsMembers < ActiveRecord::Migration
  def change
    create_table :certifications_members do |t|
      t.date :begin_date
      t.date :end_date
      t.string :notes
      t.belongs_to :certification, index: true, null: false
      t.belongs_to :members_client, index: true, null: false

      t.timestamps null: false

    end
  end
end
