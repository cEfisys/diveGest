class DiveSpot < ActiveRecord::Base
  has_many :dive_service_spots, foreign_key: 'dive_spot_id'
end
