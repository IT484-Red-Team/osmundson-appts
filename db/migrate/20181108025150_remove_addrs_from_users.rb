class RemoveAddrsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :prev_addr, :string
    remove_column :users, :cur_addr, :string
  end
end
