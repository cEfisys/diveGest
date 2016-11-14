class DiveServiceMember < ActiveRecord::Base
  belongs_to :members_client, foreign_key: 'members_client_id'
  belongs_to :dive_service_member_type, foreign_key: 'dive_service_member_type_id'
  belongs_to :dive_service_spot, foreign_key: 'dive_service_spot_id'
  has_many :dive_service_member_gears, foreign_key: 'dive_service_member_id'
end
