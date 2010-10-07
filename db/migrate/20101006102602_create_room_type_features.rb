class CreateRoomTypeFeatures < ActiveRecord::Migration
  def self.up
    create_table :room_type_features do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :room_type_features
  end
end
