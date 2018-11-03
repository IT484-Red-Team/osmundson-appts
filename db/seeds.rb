# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

more_owners = [{:fname => 'bob', :lname => 'jefferson'}, {:fname => 'jane', :lname => 'doe'},
                {:fname => 'george', :lname => 'johnson'}, {:fname => 'john', :lname => 'pearson'}]
more_owners.each do |owner|
    Owner.create!(owner)
end
    
more_buildings = [{:number => '1', :name => 'WG', :street_addr => '8300 31st St', :owner_id => 1}, {:number => 2, :name => 'V', :street_addr => '3055 Virginia', :owner_id => 2},
                    {:number => '3', :name => 'V', :street_addr => '3063 Virginia', :owner_id => '1'}, {:number => '4', :name => 'HP',  :street_addr => '1436 Hampshire'}, 
                    {:number => '5', :name => 'GI', :street_addr => '2641 Girard'}, {:number => '6', :name => 'MC', :street_addr => '2061 McKnight', :owner_id => 3}, 
                    {:number => '7', :name => 'SK', :street_addr => '2209 Skillman', :owner_id => 4}, {:number => '8', :name => 'SKI', :street_addr => '2253 Skillman'}]
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

more_users = [{:credit_card_id => 1 , :fname => 'jane', :lname => 'doe', :prev_addr => 'Previous Address', :curr_addr => 'Current Address', :email => '1234@email.com', :encrypted_password => '#$taawktljasktlw4aaglj', :password => 'password', reset_password_token: 'token', reset_password_sent_at: nil, remember_created_at: "2018-12-31 22:27:09", sign_in_count: 1, current_sign_in_at: "2018-12-31 22:27:09", last_sign_in_at: "2018-12-31 22:27:09", current_sign_in_ip: "0.0.0.0", last_sign_in_ip: "0.0.0.0"}]
more_users.each do |user|
    User.create!(user)
end