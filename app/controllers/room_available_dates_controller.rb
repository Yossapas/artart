class RoomAvailableDatesController < ApplicationController
  def index
    @room_available_dates = RoomAvailableDate.all
  end
  
  def show
    @room_available_date = RoomAvailableDate.find(params[:id])
  end
  
  def new
    @room_available_date = RoomAvailableDate.new
  end
  
  def create
    @room_available_date = RoomAvailableDate.new(params[:room_available_date])
    if @room_available_date.save
      flash[:notice] = "Successfully created room available date."
      redirect_to @room_available_date
    else
      render :action => 'new'
    end
  end
  
  def edit
    @room_available_date = RoomAvailableDate.find(params[:id])
  end
  
  def update
    @room_available_date = RoomAvailableDate.find(params[:id])
    if @room_available_date.update_attributes(params[:room_available_date])
      flash[:notice] = "Successfully updated room available date."
      redirect_to @room_available_date
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @room_available_date = RoomAvailableDate.find(params[:id])
    @room_available_date.destroy
    flash[:notice] = "Successfully destroyed room available date."
    redirect_to room_available_dates_url
  end
end
