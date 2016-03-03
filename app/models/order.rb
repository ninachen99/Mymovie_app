class Order < ActiveRecord::Base
	belongs_to :movie
	belongs_to :theater
	validates :age, :first_name, :last_name, :email, :credit_card, :expiration, :order_quantity, presence: true
    validate :orders_sold_out, on: :create
    
	# order limit validate in models - order.rb!!!
     

	def order_total(orders)
        order_sum = 0
        orders.each do |order|
            order_sum += order.order_quantity
        end 
        order_sum
    end 

    def order_limit(movie.theaters)
        available_seats = theater.seats
    	movie.theaters.each do |theater|
    		available_seats += (theater.seats.count - @order_sum)
        end 
        available_seats
    end 
    
    def orders_sold_out

        if order_total >= order_limit

            errors.add(:order_quantity, "all seats are sold out for this movie.")  
        end
    end 

	# end of order limit validate!!!
end