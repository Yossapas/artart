class RoomTypeFeaturingsController < ApplicationController
  def index
    @room_type_featurings = RoomTypeFeaturing.all
  end
  
  def show
    @room_type_featuring = RoomTypeFeaturing.find(params[:id])
  end
  
  def new
    @room_type_featuring = RoomTypeFeaturing.new
  end
  
  def create
    @room_type_featuring = RoomTypeFeaturing.new(params[:room_type_featuring])
    if @room_type_featuring.save
      flash[:notice] = "Successfully created room type featuring."
      redirect_to @room_type_featuring
    else
      render :action => 'new'
    end
  end
  
  def edit
    @room_type_featuring = RoomTypeFeaturing.find(params[:id])
  end
  
  def update
    @room_type_featuring = RoomTypeFeaturing.find(params[:id])
    if @room_type_featuring.update_attributes(params[:room_type_featuring])
      flash[:notice] = "Successfully updated room type featuring."
      redirect_to @room_type_featuring
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @room_type_featuring = RoomTypeFeaturing.find(params[:id])
    @room_type_featuring.destroy
    flash[:notice] = "Successfully destroyed room type featuring."
    redirect_to room_type_featurings_url
  end
end
