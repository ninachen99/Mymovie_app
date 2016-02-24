class Theater < ActiveRecord::Base
	has_many :orders
	has_many :showtimes
	has_many :movies, through: :orders
end
