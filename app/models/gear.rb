class Gear < ActiveRecord::Base
  belongs_to :gear_size, foreign_key: 'gear_size_id'
  belongs_to :gear_type, foreign_key: 'gear_type_id'
  has_many :dive_service_member_gears, foreign_key: 'gear_id'
end
