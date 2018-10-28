# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

more_owners = [{:fname => 'bob', :lname => 'jefferson'}]
more_owners.each do |owner|
    Owner.create!(owner)
end
    
more_buildings = [{:number => '1', :street_addr => '100 Street', :owner_id => 1}]
more_buildings.each do |building|
    Building.create!(building)
end

more_apartments = [{:number => '1', :availability => true, :building_id => 1}, {:number => '2', :availability => false, :building_id => 1}]
more_apartments.each do |apartment|
    Apartment.create!(apartment)
end

more_rooms = [{:number => '1', :availability => true, :apartment_id => 1}, {:number => 'B', :availability => false, :apartment_id => 1}]
more_rooms.each do |room|
    Room.create!(room)
end

more_renters = [{:fname => 'jane', :lname => 'doe', :apartment_id => 1, :room_id => 1}]
more_renters.each do |renter|
    Renter.create!(renter)
end

more_maintenanceTypes = [{:description => 'Front Door'}]
more_maintenanceTypes.each do |maintenanceType|
    MaintenanceType.create!(maintenanceType)
end

more_requestStatuses = [{:description => 'Submitted'}]
more_requestStatuses.each do |requestStatus|
    RequestStatus.create!(requestStatus)
end

more_maintenanceRequests = [{:renter_id => 1, :maintenance_type_id => 1, :request_status_id => 1 , :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur nunc quis viverra fringilla. 
    Nullam elementum felis leo, quis condimentum sem fringilla vel. Ut vulputate porta turpis et dapibus. Nunc sollicitudin nec nisl at tincidunt. 
    Cras et bibendum enim. Quisque a ligula nec nunc congue suscipit. Cras vel auctor orci. Integer dapibus ex est, sit amet dictum nibh hendrerit a. 
    Phasellus maximus, urna eu dignissim condimentum, magna dolor imperdiet dolor, vitae varius erat odio vel orci. 
    Suspendisse ullamcorper leo at odio efficitur viverra. Aenean ex urna, dapibus vel commodo in, finibus sed odio. 
    Mauris porta tellus id lectus feugiat, ac.'}]
more_maintenanceRequests.each do |maintenanceRequest|
    MaintenanceRequest.create!(maintenanceRequest)
end

more_creditCards = [{:number => 0000000000000000, :date => 0101, :name => 'jane z doe', :cvc_number => 000}]
more_creditCards.each do |creditCard|
    CreditCard.create!(creditCard)
end

more_users = [{:credit_card_id => 1 , :fname => 'jane', :lname => 'doe', :prev_addr => 'Previous Address', :curr_addr => 'Current Address', :username => 'user1', :password => 'password'}]
more_users.each do |user|
    User.create!(user)
end