class CreateMaintenanceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_requests do |t|
      t.text 'description'
      t.integer 'maintenance_type_id'
      t.integer 'renter_id'
      t.integer 'request_status_id'
      t.references :maintenance_type, foreign_key: true
      t.references :renter, foreign_key: true
      t.references :request_status, foreign_key: true
    end
  end
end
