class HotelFeaturing < ActiveRecord::Base
  attr_accessible :hotel_id, :hotel_feature_id
  
  belongs_to :hotel
  belongs_to :hotel_feature
end
