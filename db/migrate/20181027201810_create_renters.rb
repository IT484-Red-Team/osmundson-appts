class CreateRenters < ActiveRecord::Migration[5.2]
  def change
    create_table :renters do |t|
      t.string 'fname'
      t.string 'lname'
      t.references 'apartment'
      t.references 'room'
    end
  end
end
