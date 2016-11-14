class GearSize < ActiveRecord::Base
  has_many :gears, foreign_key: 'gear_size_id'
end
