class TheatersController < ApplicationController
	def index
		@theaters = Theater.all
	end 

	def show
		@theater = Theater.find(params[:id])
		@movies = @theater.movies
		@showtimes = @theater.showtimes
	end 

	def new
		@theater = Theater.new
	end 

	def create
		@theater = Theater.new(theater_params)
	
		if @theater.save

			#do sth
			redirect_to '/theaters'
		else
			render '/new'
		end 
	end 

	def edit
		@theater = Theater.find(params[:id])
	end 

	def update
		@theater = Theater.find(params[:id])
		if @theater.update_attributes(theater_params)
			flash[:success] = "Theater updated!"
			redirect_to [:theaters]
		else
		    render :edit
	    end 
	end 

	def destroy
		@theater = Theater.find(params[:id])
		@theater.destroy
		redirect_to theaters_path
	end 

	private
	  def theater_params
	  	params.require(:theater).permit(:name, :seats, :image)
	  end 
end
