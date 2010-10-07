class CreateHotelFeaturings < ActiveRecord::Migration
  def self.up
    create_table :hotel_featurings do |t|
      t.integer :hotel_id
      t.integer :hotel_feature_id
      t.timestamps
    end
  end

  def self.down
    drop_table :hotel_featurings
  end
end
