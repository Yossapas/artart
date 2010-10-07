class Hotel < ActiveRecord::Base
  attr_accessible :name, :star, :description, :detail, :address, :website, :email, :phone, :fax, :longitude, :latitude
  
  has_many :hotel_featurings
  has_many :hotel_features, :through => :hotel_featurings
  
  has_one :gallery, :as => :galleriable
  
  after_save do |hotel|
    gallery = Gallery.new
    gallery.galleriable = hotel
    gallery.name = "#{hotel.name}'s Gallery"
    gallery.save
  end
end
