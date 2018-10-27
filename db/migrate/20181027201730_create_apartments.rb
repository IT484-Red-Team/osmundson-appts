class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string 'number'
      t.boolean 'availability'
      t.references 'building'
    end
  end
end
