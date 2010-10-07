class Hotel < ActiveRecord::Base
  attr_accessible :name, :star, :description, :detail, :address, :website, :email, :phone, :fax, :longitude, :latitude
  
  has_many :hotel_featurings
  has_many :hotel_features, :through => :hotel_featurings
end
