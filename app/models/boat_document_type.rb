class BoatDocumentType < ActiveRecord::Base
  has_many :boat_documents, foreign_key: 'boat_document_type_id'
end
