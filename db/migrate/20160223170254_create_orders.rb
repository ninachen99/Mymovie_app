class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :theater, index: true
      t.timestamps null: false
    end
  end
end
