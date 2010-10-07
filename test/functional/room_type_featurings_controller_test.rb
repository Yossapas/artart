require 'test_helper'

class RoomTypeFeaturingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => RoomTypeFeaturing.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    RoomTypeFeaturing.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RoomTypeFeaturing.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to room_type_featuring_url(assigns(:room_type_featuring))
  end
  
  def test_edit
    get :edit, :id => RoomTypeFeaturing.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    RoomTypeFeaturing.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RoomTypeFeaturing.first
    assert_template 'edit'
  end

  def test_update_valid
    RoomTypeFeaturing.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RoomTypeFeaturing.first
    assert_redirected_to room_type_featuring_url(assigns(:room_type_featuring))
  end
  
  def test_destroy
    room_type_featuring = RoomTypeFeaturing.first
    delete :destroy, :id => room_type_featuring
    assert_redirected_to room_type_featurings_url
    assert !RoomTypeFeaturing.exists?(room_type_featuring.id)
  end
end
