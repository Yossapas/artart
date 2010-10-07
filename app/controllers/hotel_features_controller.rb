class HotelFeaturesController < ApplicationController
  def index
    @hotel_features = HotelFeature.all
  end
  
  def show
    @hotel_feature = HotelFeature.find(params[:id])
  end
  
  def new
    @hotel_feature = HotelFeature.new
  end
  
  def create
    @hotel_feature = HotelFeature.new(params[:hotel_feature])
    if @hotel_feature.save
      flash[:notice] = "Successfully created hotel feature."
      redirect_to @hotel_feature
    else
      render :action => 'new'
    end
  end
  
  def edit
    @hotel_feature = HotelFeature.find(params[:id])
  end
  
  def update
    @hotel_feature = HotelFeature.find(params[:id])
    if @hotel_feature.update_attributes(params[:hotel_feature])
      flash[:notice] = "Successfully updated hotel feature."
      redirect_to @hotel_feature
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @hotel_feature = HotelFeature.find(params[:id])
    @hotel_feature.destroy
    flash[:notice] = "Successfully destroyed hotel feature."
    redirect_to hotel_features_url
  end
end
