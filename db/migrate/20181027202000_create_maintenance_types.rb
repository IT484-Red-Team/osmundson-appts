class CreateMaintenanceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_types do |t|
      t.text 'description'
    end
  end
end
