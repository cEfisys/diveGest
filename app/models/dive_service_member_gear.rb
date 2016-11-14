class DiveServiceMemberGear < ActiveRecord::Base
  belongs_to :dive_service_member, foreign_key: 'dive_service_member_id'
  belongs_to :gear, foreign_key: 'gear_id'
end
