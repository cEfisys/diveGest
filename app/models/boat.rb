class Boat < ActiveRecord::Base
  has_many :boat_documents, foreign_key: 'boat_id'
  has_many :dive_services, foreign_key: 'boat_id'
end
