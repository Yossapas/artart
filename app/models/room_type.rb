class RoomType < ActiveRecord::Base
  attr_accessible :name, :description, :hotel_id
  
  has_many :room_type_featurings
  has_many :room_type_features, :through => :room_type_featurings
end
