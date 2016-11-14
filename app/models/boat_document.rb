class BoatDocument < ActiveRecord::Base
  belongs_to :boat, foreign_key: 'boat_id'
  belongs_to :boat_document_type, foreign_key: 'boat_document_type_id'
end
