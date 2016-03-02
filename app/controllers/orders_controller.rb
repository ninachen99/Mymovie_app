class OrdersController < ApplicationController
	# for the order limit
	require 'order.rb'

	# end order limit
	def new
		@order = Order.new
	end 

	def index
		@orders = Order.all
	end 
    # call the validate_orders here
    def create
    	@order = Order.new(order_params)
    	if @order.save 
    		flash[:success] = "Thank you for the order."
    		redirect_to '/orders'
    # call validate_orders here
        elsif @order.save == false
        	render 'new'
    	else
    		redirect_to :validate_orders
    	end 
    end 
   

 # setting order limit in orders controller!!!
  
    def validate_orders
        
		if Order.order_total >= Order.order_limit
			
			order.errors[:order] << "Sorry, seats are sold out."
			
		end

	end 


 # end of setting order limit!!!

	private
	  def order_params
	  	params.require(:order).permit(:age, :first_name, :last_name, :email, :credit_card, :expiration, :order_quantity)
	  end 
  end


