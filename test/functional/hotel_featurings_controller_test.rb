require 'test_helper'

class HotelFeaturingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => HotelFeaturing.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    HotelFeaturing.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    HotelFeaturing.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hotel_featuring_url(assigns(:hotel_featuring))
  end
  
  def test_edit
    get :edit, :id => HotelFeaturing.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    HotelFeaturing.any_instance.stubs(:valid?).returns(false)
    put :update, :id => HotelFeaturing.first
    assert_template 'edit'
  end

  def test_update_valid
    HotelFeaturing.any_instance.stubs(:valid?).returns(true)
    put :update, :id => HotelFeaturing.first
    assert_redirected_to hotel_featuring_url(assigns(:hotel_featuring))
  end
  
  def test_destroy
    hotel_featuring = HotelFeaturing.first
    delete :destroy, :id => hotel_featuring
    assert_redirected_to hotel_featurings_url
    assert !HotelFeaturing.exists?(hotel_featuring.id)
  end
end
