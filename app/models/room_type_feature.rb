class RoomTypeFeature < ActiveRecord::Base
  attr_accessible :name
  
  has_many :room_type_featurings
  has_many :room_types, :through => :room_type_featurings
end
