require 'test_helper'

class HotelFeatureTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert HotelFeature.new.valid?
  end
end
