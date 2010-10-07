class RoomTypeFeaturing < ActiveRecord::Base
  attr_accessible :room_type_id, :room_type_feature_id
  
  belongs_to :room_type
  belongs_to :room_type_feature
end
