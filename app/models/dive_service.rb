class DiveService < ActiveRecord::Base
  belongs_to :boat, foreign_key: 'boat_id'
  has_many :dive_service_spots, foreign_key: 'dive_service_id'
end
