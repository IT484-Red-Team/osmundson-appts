class CreateMaintenanceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_requests do |t|
      t.text 'description'
      t.references :maintenance_type, foreign_key: true
      t.references :renter, foreign_key: true
      t.references :request_status, foreign_key: true
    end
  end
end
