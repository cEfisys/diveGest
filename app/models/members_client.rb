class MembersClient < ActiveRecord::Base
  has_many :certifications_members, foreign_key: 'members_client_id'
  has_many :dive_service_members, foreign_key: 'members_client_id'
end
