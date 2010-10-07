require 'test_helper'

class RoomTypeFeaturingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RoomTypeFeaturing.new.valid?
  end
end
