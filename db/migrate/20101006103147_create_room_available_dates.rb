class CreateRoomAvailableDates < ActiveRecord::Migration
  def self.up
    create_table :room_available_dates do |t|
      t.integer :room_id
      t.date :begin_at
      t.date :end_at
      t.timestamps
    end
  end

  def self.down
    drop_table :room_available_dates
  end
end
