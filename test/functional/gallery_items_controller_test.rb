require 'test_helper'

class GalleryItemsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => GalleryItem.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    GalleryItem.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    GalleryItem.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to gallery_item_url(assigns(:gallery_item))
  end
  
  def test_edit
    get :edit, :id => GalleryItem.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    GalleryItem.any_instance.stubs(:valid?).returns(false)
    put :update, :id => GalleryItem.first
    assert_template 'edit'
  end

  def test_update_valid
    GalleryItem.any_instance.stubs(:valid?).returns(true)
    put :update, :id => GalleryItem.first
    assert_redirected_to gallery_item_url(assigns(:gallery_item))
  end
  
  def test_destroy
    gallery_item = GalleryItem.first
    delete :destroy, :id => gallery_item
    assert_redirected_to gallery_items_url
    assert !GalleryItem.exists?(gallery_item.id)
  end
end
