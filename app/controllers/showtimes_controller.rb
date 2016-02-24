class ShowtimesController < ApplicationController
	def show
		@showtime = Showtime.find(params[:id])
	end 

	def edit
		@showtime = Showtime.find(params[:id])
	end 
    
    def update
    	@showtime = Showtime.find(params[:id])
    	if @showtime.update_attributes(showtime_params)
    		redirect_to(:action => 'show', :id => @showtime.id)
    	else 
    		render 'edit'
    	end 
    end 

	private
	  def showtime_params
	  	params.require(:showtime).permit(:month, :date, :hour, :year)
	  end 
end
