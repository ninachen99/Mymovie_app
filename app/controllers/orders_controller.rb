class OrdersController < ApplicationController
	
	def new
		@order = Order.new
	end 

	def index
		@orders = Order.all
	end 
   
    def create
    	@order = Order.new(order_params)
    	
    	#add mailer
    	
    	if @order.save 
    		flash[:success] = "Thank you for the order."
    		OrderMailer.thank_email
    		redirect_to '/orders'
    
        else
        	render 'new'	
    	end 
    end 
   
    
	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to orders_path
	end 

	private
	  def order_params
	  	params.require(:order).permit(:age, :first_name, :last_name, :email, :credit_card, :expiration, :order_quantity)
	  end 
end


