class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :theater, index: true

      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :credit_card
      t.string :expiration
      
      t.timestamps null: false
    end
  end
end
