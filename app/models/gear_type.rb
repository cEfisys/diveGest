class GearType < ActiveRecord::Base
  has_many :gears, foreign_key: 'gear_type_id'
end
