class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |t|
      t.references :rent_app, foreign_key: true
      t.string :name
      t.string :city
      t.string :state
      t.string :phone_num
      t.string :income
    end
  end
end
