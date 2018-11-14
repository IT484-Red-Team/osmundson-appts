class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :rent_app, foreign_key: true
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :mngmt_phone
      t.boolean :is_current
    end
  end
end
