class ForeignKeys < ActiveRecord::Migration
  def change

    add_foreign_key :boat_documents, :boat_document_types
    add_foreign_key :boat_documents, :boats

    add_foreign_key :dive_services, :boats

    add_foreign_key :dive_service_spots, :dive_services
    add_foreign_key :dive_service_spots, :dive_spots

    add_foreign_key :gears, :gear_types
    add_foreign_key :gears, :gear_sizes

    add_foreign_key :certifications, :certification_types

    add_foreign_key :certifications_members, :certifications
    add_foreign_key :certifications_members, :members_clients

    add_foreign_key :dive_service_members, :dive_service_spots
    add_foreign_key :dive_service_members, :dive_service_member_types
    add_foreign_key :dive_service_members, :members_clients

    add_foreign_key :dive_service_member_gears, :gears
    add_foreign_key :dive_service_member_gears, :dive_service_members
  end
end
