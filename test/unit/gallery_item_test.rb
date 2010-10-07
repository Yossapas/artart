require 'test_helper'

class GalleryItemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert GalleryItem.new.valid?
  end
end
