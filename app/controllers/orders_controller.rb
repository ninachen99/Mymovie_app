class OrdersController < ApplicationController
	def new
		@order = Order.new
	end 

	def index
		@order = Order.all
	end 
end
