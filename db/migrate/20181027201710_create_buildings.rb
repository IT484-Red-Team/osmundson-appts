class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string 'number'
      t.string 'name'
      t.string 'street_addr'
      t.integer 'owner_id'
      t.references :owner, foreign_key: true
    end
  end
end
