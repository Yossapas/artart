# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Hotel.delete_all
HotelFeature.delete_all
HotelFeaturing.delete_all
RoomType.delete_all
RoomTypeFeature.delete_all
RoomTypeFeaturing.delete_all
Room.delete_all
RoomAvailableDate.delete_all

#---------------------------------------------------------------------------------

hotel01 = Hotel.create( :name => "TheArt", 
                        :star => 5, 
                        :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ", 
                        :detail => "ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ", 
                        :address => "The Art Patong 5/55 Hadd Patong Rd., Patong, Phuket, Thailand 83150", 
                        :website => "http://theartpatong.com", 
                        :email => "art@theartpatong.com", 
                        :phone => "076-466-663", 
                        :fax => "076-466-664", 
                        :longitude => 7.883333, 
                        :latitude => 98.4);
                        
hotel02 = Hotel.create( :name => "Country Club", 
                        :star => 3, 
                        :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ", 
                        :detail => "ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ", 
                        :address => "Country Club 7/169 Hadd Patong Rd., Patong, Phuket, Thailand 83150", 
                        :website => "http://countryclub.com", 
                        :email => "country@countryclub.com", 
                        :phone => "076888999", 
                        :fax => "076888999-0", 
                        :longitude => 7.883333, 
                        :latitude => 98.4);
                        
#---------------------------------------------------------------------------------                
                        
hotel_feature01 = HotelFeature.create(:name => "Swimming pool");

hotel_feature02 = HotelFeature.create(:name => "Spa");

hotel_feature03 = HotelFeature.create(:name => "Sauna");

hotel_feature04 = HotelFeature.create(:name => "Fitness");

#---------------------------------------------------------------------------------

hotel_featuring01 = HotelFeaturing.create(:hotel_id => 1, :hotel_feature_id => 1);

hotel_featuring02 = HotelFeaturing.create(:hotel_id => 1, :hotel_feature_id => 2);

#---------------------------------------------------------------------------------

room_type01 = RoomType.create(:name => "Deluxe");

room_type02 = RoomType.create(:name => "Superior");

room_type03 = RoomType.create(:name => "Balcony");

#---------------------------------------------------------------------------------

room_type_feature01 = RoomTypeFeature.create(:name => "Cable TV");

room_type_feature02 = RoomTypeFeature.create(:name => "Bathtub");

room_type_feature03 = RoomTypeFeature.create(:name => "Seaview");

#---------------------------------------------------------------------------------

room_type_featuring01 = RoomTypeFeaturing.create(:room_type_id => 1, :room_type_feature_id => 1);

room_type_featuring02 = RoomTypeFeaturing.create(:room_type_id => 1, :room_type_feature_id => 2);

#---------------------------------------------------------------------------------

room01 = Room.create(:price => 5000.00, :room_type_id => 1);

room01 = Room.create(:price => 2500.00, :room_type_id => 2);

#---------------------------------------------------------------------------------

room_available_date01 = RoomAvailableDate.create(:room_id => 1);

room_available_date02 = RoomAvailableDate.create(:room_id => 2);

#---------------------------------------------------------------------------------

                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        