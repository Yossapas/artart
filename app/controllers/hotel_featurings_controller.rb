class HotelFeaturingsController < ApplicationController
  def index
    @hotel_featurings = HotelFeaturing.all
  end
  
  def show
    @hotel_featuring = HotelFeaturing.find(params[:id])
  end
  
  def new
    @hotel_featuring = HotelFeaturing.new
  end
  
  def create
    @hotel_featuring = HotelFeaturing.new(params[:hotel_featuring])
    if @hotel_featuring.save
      flash[:notice] = "Successfully created hotel featuring."
      redirect_to @hotel_featuring
    else
      render :action => 'new'
    end
  end
  
  def edit
    @hotel_featuring = HotelFeaturing.find(params[:id])
  end
  
  def update
    @hotel_featuring = HotelFeaturing.find(params[:id])
    if @hotel_featuring.update_attributes(params[:hotel_featuring])
      flash[:notice] = "Successfully updated hotel featuring."
      redirect_to @hotel_featuring
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @hotel_featuring = HotelFeaturing.find(params[:id])
    @hotel_featuring.destroy
    flash[:notice] = "Successfully destroyed hotel featuring."
    redirect_to hotel_featurings_url
  end
end
