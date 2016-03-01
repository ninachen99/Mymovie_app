class AddOrderQuantityToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_quantity, :integer
  end
end
