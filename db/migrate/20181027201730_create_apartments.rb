class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string 'number'
      t.boolean 'availability'
      t.integer 'building_id'
      t.references :building, foreign_key: true
    end
  end
end
