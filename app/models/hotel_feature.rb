class HotelFeature < ActiveRecord::Base
  attr_accessible :name
  
  has_many :hotel_featurings
  has_many :hotels, :through => :hotel_featurings
end
