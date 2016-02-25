class Movie < ActiveRecord::Base
	has_many :orders
	has_many :theaters, through: :orders

	validates :title, :showtime, presence: true
end
