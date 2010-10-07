require 'test_helper'

class HotelFeaturingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert HotelFeaturing.new.valid?
  end
end
