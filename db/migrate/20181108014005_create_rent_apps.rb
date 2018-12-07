class CreateRentApps < ActiveRecord::Migration[5.2]
  def change
    create_table :rent_apps do |t|
      t.references :building, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :num_bed
      t.integer :num_bath
      t.string :ssn
      t.string :dr_license_num
      t.string :license_state
      t.string :bank_name
      t.string :bank_acct_num
      t.string :res_phone
      t.string :work_phone
      t.text :names_of_occpts
      t.string :pets
      t.datetime :submitted_time
    end
  end
end
