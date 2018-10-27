class CreateMaintenanceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_requests do |t|
      t.text 'description'
    end
  end
end
