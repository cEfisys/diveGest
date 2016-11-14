class CertificationType < ActiveRecord::Base
  has_many :certifications, foreign_key: 'certification_type_id'
end
