class CertificationsMember < ActiveRecord::Base
  belongs_to :certification, foreign_key: 'certification_id'
  belongs_to :members_client, foreign_key: 'members_client_id'
end
