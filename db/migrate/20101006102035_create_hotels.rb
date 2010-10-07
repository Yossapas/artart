class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :name
      t.integer :star
      t.text :description
      t.text :detail
      t.string :address
      t.string :website
      t.string :email
      t.string :phone
      t.string :fax
      t.float :longitude
      t.float :latitude
      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
