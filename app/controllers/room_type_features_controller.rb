class RoomTypeFeaturesController < ApplicationController
  def index
    @room_type_features = RoomTypeFeature.all
  end
  
  def show
    @room_type_feature = RoomTypeFeature.find(params[:id])
  end
  
  def new
    @room_type_feature = RoomTypeFeature.new
  end
  
  def create
    @room_type_feature = RoomTypeFeature.new(params[:room_type_feature])
    if @room_type_feature.save
      flash[:notice] = "Successfully created room type feature."
      redirect_to @room_type_feature
    else
      render :action => 'new'
    end
  end
  
  def edit
    @room_type_feature = RoomTypeFeature.find(params[:id])
  end
  
  def update
    @room_type_feature = RoomTypeFeature.find(params[:id])
    if @room_type_feature.update_attributes(params[:room_type_feature])
      flash[:notice] = "Successfully updated room type feature."
      redirect_to @room_type_feature
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @room_type_feature = RoomTypeFeature.find(params[:id])
    @room_type_feature.destroy
    flash[:notice] = "Successfully destroyed room type feature."
    redirect_to room_type_features_url
  end
end
