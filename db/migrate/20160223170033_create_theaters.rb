class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :image
      t.integer :seats
      t.timestamps null: false
    end
  end
end
