class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.string :month
      t.string :date
      t.string :hour
      t.string :year
      t.references :theater
      t.timestamps null: false
    end
  end
end
