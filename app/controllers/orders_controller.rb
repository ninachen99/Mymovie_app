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


	private
	  def order_params
	  	params.require(:order).permit(:first_name, :last_name, :email, :credit_card, :expiration)
	  end 
end
