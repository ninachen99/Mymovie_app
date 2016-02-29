class Order < ActiveRecord::Base
	belongs_to :movie
	belongs_to :theater
	validates :first_name, :last_name, :email, :credit_card, :expiration, presence: true
    
	# order limit validate!!!
	
    def order_limit
    	@movie.theaters.each do |theater|
    		@available_seats += theater.seats
    end 
    
    
	# end of order limit validate!!!
end 

end