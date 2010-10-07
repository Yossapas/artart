require 'test_helper'

class RoomTypeFeaturesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => RoomTypeFeature.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    RoomTypeFeature.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RoomTypeFeature.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to room_type_feature_url(assigns(:room_type_feature))
  end
  
  def test_edit
    get :edit, :id => RoomTypeFeature.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    RoomTypeFeature.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RoomTypeFeature.first
    assert_template 'edit'
  end

  def test_update_valid
    RoomTypeFeature.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RoomTypeFeature.first
    assert_redirected_to room_type_feature_url(assigns(:room_type_feature))
  end
  
  def test_destroy
    room_type_feature = RoomTypeFeature.first
    delete :destroy, :id => room_type_feature
    assert_redirected_to room_type_features_url
    assert !RoomTypeFeature.exists?(room_type_feature.id)
  end
end
