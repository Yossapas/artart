class RoomAvailableDate < ActiveRecord::Base
  attr_accessible :room_id, :begin_at, :end_at
end
