class Gallery < ActiveRecord::Base
  attr_accessible :name, :galleriable_id, :galleriable_type
end
