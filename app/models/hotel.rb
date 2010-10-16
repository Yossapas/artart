class Hotel < ActiveRecord::Base
  #attr_accessible :name, :star, :description, :detail, :address, :website, :email, :phone, :fax, :longitude, :latitude
  
  has_many :hotel_featurings
  has_many :hotel_features, :through => :hotel_featurings
  
  has_one :gallery, :as => :galleriable
  
  has_attached_file :avatar, :styles => { :small => "150x150>", :avatar => "150x150#" },
                    :url  => "/assets/hotels/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/hotels/:id/:style/:basename.:extension"

  validates_attachment_presence :avatar
  validates_attachment_size :avatar, :less_than => 5.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
  
  after_save do |hotel|
    gallery = Gallery.new
    gallery.galleriable = hotel
    gallery.name = "#{hotel.name}'s Gallery"
    gallery.save
  end
end
