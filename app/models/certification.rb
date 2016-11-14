class Certification < ActiveRecord::Base
  belongs_to :certification_type, foreign_key: 'certification_type_id'
  has_many :certifications_members, foreign_key: 'certification_id'
end
