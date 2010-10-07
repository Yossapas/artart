class CreateGalleryItems < ActiveRecord::Migration
  def self.up
    create_table :gallery_items do |t|
      t.string :name
      t.integer :gallery_id
      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_items
  end
end
