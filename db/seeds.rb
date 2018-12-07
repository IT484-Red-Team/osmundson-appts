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
    
more_buildings = [{:number => '1', :name => 'WG', :street_addr => '8300 31st St', :owner_id => 1}, 
                    {:number => 2, :name => 'V', :street_addr => '3055 Virginia', :owner_id => 2},
                    {:number => '3', :name => 'V', :street_addr => '3063 Virginia', :owner_id => '1'}, 
                    {:number => '4', :name => 'HP',  :street_addr => '1436 Hampshire'}, 
                    {:number => '5', :name => 'GI', :street_addr => '2641 Girard'}, 
                    {:number => '6', :name => 'MC', :street_addr => '2061 McKnight', :owner_id => 3}, 
                    {:number => '7', :name => 'SK', :street_addr => '2209 Skillman', :owner_id => 4}, 
                    {:number => '8', :name => 'SKI', :street_addr => '2253 Skillman'}]
more_buildings.each do |building|
    Building.create!(building)
end

more_apartments = [{:number => '1', :availability => true, :building_id => 1}, {:number => '2', :availability => false, :building_id => 2},
                    {:number => '3', :availability => true, :building_id => 3}, {:number => '1', :availability => false, :building_id => 4},
                    {:number => '1', :availability => true, :building_id => 5}, {:number => '2', :availability => false, :building_id => 6},
                    {:number => '2', :availability => true, :building_id => 7}, {:number => '1', :availability => false, :building_id => 8}]
more_apartments.each do |apartment|
    Apartment.create!(apartment)
end

more_maintenanceTypes = [{:description => 'Front Door'}]
more_maintenanceTypes.each do |maintenanceType|
    MaintenanceType.create!(maintenanceType)
end

more_requestStatuses = [{:description => 'Submitted'}]
more_requestStatuses.each do |requestStatus|
    RequestStatus.create!(requestStatus)
end

more_users = [{:credit_card_id => 1, :admin => true, :email => '1234@email.com', :encrypted_password => '#$taawktljasktlw4aaglj', :password => 'password', reset_password_token: 'token', reset_password_sent_at: nil, remember_created_at: "2018-12-31 22:27:09", sign_in_count: 1, current_sign_in_at: "2018-12-31 22:27:09", last_sign_in_at: "2018-12-31 22:27:09", current_sign_in_ip: "0.0.0.0", last_sign_in_ip: "0.0.0.0"}]
more_users.each do |user|
    u = User.create!(user)
    if u.persisted?
        u.maintenance_request.create!(:request_status_id => 1 , :maintenance_type => MaintenanceType.first, :description => 'Lorem ipsum dolor sit amet')
        u.create_credit_card(:number => 0000000000000000, :date => Time.now, :name => 'jane z doe', :cvc_number => 000)
    end
end
