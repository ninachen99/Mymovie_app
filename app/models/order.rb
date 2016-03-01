class Order < ActiveRecord::Base
	belongs_to :movie
	belongs_to :theater
	validates :age, :first_name, :last_name, :email, :credit_card, :expiration, :order_quantity, presence: true
    
	# order limit validate!!!
	
    def order_limit
    	@movie.theaters.each do |theater|
    		@available_seats += theater.seats
    end 
    
    # calculate total order

    def order_total
    	@orders.each do |order|
    		@order_sum += order.order_quantity
    end 
    
	# end of order limit validate!!!
  end 
 end 
end