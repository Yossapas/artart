require 'test_helper'

class HotelFeaturesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => HotelFeature.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    HotelFeature.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    HotelFeature.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hotel_feature_url(assigns(:hotel_feature))
  end
  
  def test_edit
    get :edit, :id => HotelFeature.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    HotelFeature.any_instance.stubs(:valid?).returns(false)
    put :update, :id => HotelFeature.first
    assert_template 'edit'
  end

  def test_update_valid
    HotelFeature.any_instance.stubs(:valid?).returns(true)
    put :update, :id => HotelFeature.first
    assert_redirected_to hotel_feature_url(assigns(:hotel_feature))
  end
  
  def test_destroy
    hotel_feature = HotelFeature.first
    delete :destroy, :id => hotel_feature
    assert_redirected_to hotel_features_url
    assert !HotelFeature.exists?(hotel_feature.id)
  end
end
