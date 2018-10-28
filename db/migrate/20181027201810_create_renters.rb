class CreateRenters < ActiveRecord::Migration[5.2]
  def change
    create_table :renters do |t|
      t.string 'fname'
      t.string 'lname'
      t.references :apartment, foreign_key: true
      t.references :room, foreign_key: true
    end
  end
end
