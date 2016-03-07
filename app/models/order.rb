class Order < ActiveRecord::Base
	belongs_to :movie
	belongs_to :theater
	validates :age, :first_name, :last_name, :email, :credit_card, :expiration, presence: true
    validate :order_quantity, if: :orders_sold_out?
    
    # order limit validate in models - order.rb!!!
    # get total order
    
    def order_total
        order_sum = 0
        Order.all.each do |order|
            order_sum += order.order_quantity.to_i
        end 
        order_sum
    end 
    # get seats left for sale
    def order_limit
        available_seats = 0
        Theater.all.each do |theater|
          available_seats = theater.seats.to_i
          #available_seats -= order_sum
        end   
        available_seats 
    end 
    
    # compare order total with seats left
    def orders_sold_out?
        if order_total >= order_limit
           errors.add(:order_quantity, "all seats are sold out for this movie.")  
        end
    end 
    
	# end of order limit validate!!!
end