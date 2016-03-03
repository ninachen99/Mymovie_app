class Order < ActiveRecord::Base
	belongs_to :movie
	belongs_to :theater
	validates :age, :first_name, :last_name, :email, :credit_card, :expiration, :order_quantity, presence: true
    validate :orders_sold_out
    
	# order limit validate in models - order.rb!!!
    # get total order
    def order_total
        all_orders = Order.all
        puts all_orders.count
        
        order_sum = 0
        all_orders.each do |order|
            order_sum += order.order_quantity
        end 
        order_sum
    end 
    # get seats left for sale
    def order_limit
        available_seats = 0
    	Theater.each do |theater|
    		available_seats += (theater.seats.count - order_sum)
        end 
        available_seats
    end 
    
    # compare order total with seats left
    def orders_sold_out

        if order_total >= order_limit
           errors.add(:order_quantity, "all seats are sold out for this movie.")  
        end
    end 

	# end of order limit validate!!!
end