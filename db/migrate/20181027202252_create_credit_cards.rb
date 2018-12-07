class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.integer 'number'
      t.date 'date'
      t.string 'name'
      t.integer 'cvc_number'
      t.references :user, foreign_key: true
    end
  end
end
