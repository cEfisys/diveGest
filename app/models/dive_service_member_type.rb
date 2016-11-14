class DiveServiceMemberType < ActiveRecord::Base
  has_many :dive_service_members, foreign_key: 'dive_service_member_type_id'
end
