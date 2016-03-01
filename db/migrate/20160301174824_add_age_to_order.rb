class AddAgeToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :age, :integer
  end
end
