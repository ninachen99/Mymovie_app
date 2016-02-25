class Order < ActiveRecord::Base
	belongs_to :movie
	belongs_to :theater
	validates :first_name, :last_name, :email, :credit_card, :expiration, presence: true
end
