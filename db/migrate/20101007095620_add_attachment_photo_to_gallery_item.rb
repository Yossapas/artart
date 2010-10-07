class AddAttachmentPhotoToGalleryItem < ActiveRecord::Migration
  def self.up
    add_column :gallery_items, :photo_file_name, :string
    add_column :gallery_items, :photo_content_type, :string
    add_column :gallery_items, :photo_file_size, :integer
    add_column :gallery_items, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :gallery_items, :photo_file_name
    remove_column :gallery_items, :photo_content_type
    remove_column :gallery_items, :photo_file_size
    remove_column :gallery_items, :photo_updated_at
  end
end
