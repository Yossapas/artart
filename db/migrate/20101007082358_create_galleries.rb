class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :name
      t.integer :galleriable_id
      t.string :galleriable_type
      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
