class OrdersController < ApplicationController
	def new
		@order = Order.new
	end 

	def index
		@orders = Order.all
	end 
    
    def create
    	@order = Order.new(order_params)
    	if @order.save
    		flash[:success] = "Thank you for the order."
    		redirect_to '/orders'
    	else
    		render 'new'
    	end 
    end 
 # setting order limit!!!
    def validate_orders

		if @orders > @available_seat
			order.errors[:order] << "Sorry, seats are sold out."
		end

	end 
 # end of setting order limit!!!

	private
	  def order_params
	  	params.require(:order).permit(:first_name, :last_name, :email, :credit_card, :expiration)
	  end 
end

