class GalleryItemsController < ApplicationController
  def index
    @gallery_items = GalleryItem.all
  end
  
  def show
    @gallery_item = GalleryItem.find(params[:id])
  end
  
  def new
    @gallery_item = GalleryItem.new
  end
  
  def create
    @gallery_item = GalleryItem.new(params[:gallery_item])
    if @gallery_item.save
      flash[:notice] = "Successfully created gallery item."
      redirect_to @gallery_item.gallery
    else
      render :action => 'new'
    end
  end
  
  def edit
    @gallery_item = GalleryItem.find(params[:id])
  end
  
  def update
    @gallery_item = GalleryItem.find(params[:id])
    if @gallery_item.update_attributes(params[:gallery_item])
      flash[:notice] = "Successfully updated gallery item."
      redirect_to @gallery_item
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @gallery = @gallery_item.gallery
    @gallery_item = GalleryItem.find(params[:id])
    @gallery_item.destroy
    flash[:notice] = "Successfully destroyed gallery item."
    redirect_to @gallery
  end
end
