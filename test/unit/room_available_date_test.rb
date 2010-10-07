require 'test_helper'

class RoomAvailableDateTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RoomAvailableDate.new.valid?
  end
end
