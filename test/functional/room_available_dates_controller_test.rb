require 'test_helper'

class RoomAvailableDatesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => RoomAvailableDate.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    RoomAvailableDate.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RoomAvailableDate.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to room_available_date_url(assigns(:room_available_date))
  end
  
  def test_edit
    get :edit, :id => RoomAvailableDate.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    RoomAvailableDate.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RoomAvailableDate.first
    assert_template 'edit'
  end

  def test_update_valid
    RoomAvailableDate.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RoomAvailableDate.first
    assert_redirected_to room_available_date_url(assigns(:room_available_date))
  end
  
  def test_destroy
    room_available_date = RoomAvailableDate.first
    delete :destroy, :id => room_available_date
    assert_redirected_to room_available_dates_url
    assert !RoomAvailableDate.exists?(room_available_date.id)
  end
end
