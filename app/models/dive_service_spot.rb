class DiveServiceSpot < ActiveRecord::Base
  has_many :dive_service_members, foreign_key: 'dive_service_spot_id'
  belongs_to :dive_spot, foreign_key: 'dive_spot_id'
  belongs_to :dive_service, foreign_key: 'dive_service_id'
end
