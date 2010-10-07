class Gallery < ActiveRecord::Base
  attr_accessible :name, :galleriable_id, :galleriable_type
  
  belongs_to :galleriable, :polymorphic => true
  has_many :gallery_items
end
