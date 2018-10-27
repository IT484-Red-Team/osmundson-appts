class CreateMaintenanceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_requests do |t|
      t.text 'description'
      t.references 'maintenance_type'
      t.references 'renter'
      t.references 'request_status'
    end
  end
end
