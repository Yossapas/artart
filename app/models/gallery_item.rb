class GalleryItem < ActiveRecord::Base
  #attr_accessible :name, :gallery_id
  
  belongs_to :gallery
  
  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/gallery_items/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/gallery_items/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
