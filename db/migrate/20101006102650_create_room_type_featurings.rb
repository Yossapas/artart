class CreateRoomTypeFeaturings < ActiveRecord::Migration
  def self.up
    create_table :room_type_featurings do |t|
      t.integer :room_type_id
      t.integer :room_type_feature_id
      t.timestamps
    end
  end

  def self.down
    drop_table :room_type_featurings
  end
end
