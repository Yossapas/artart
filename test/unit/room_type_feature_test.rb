require 'test_helper'

class RoomTypeFeatureTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RoomTypeFeature.new.valid?
  end
end
