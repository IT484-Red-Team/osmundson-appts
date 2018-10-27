class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string 'number'
      t.string 'street_addr'
    end
  end
end
