class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string 'fname'
      t.string 'lname'
      t.string 'prev_addr'
      t.string 'curr_addr'
      t.string 'username'
      t.string 'password'
    end
  end
end