class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end 

	def show
		@movie = Movie.find(params[:id])
		@theaters = @movie.theaters
	end 

	def new
		@movie = Movie.new
	end 

	def create
		@movie = Movie.new(movie_params)
	
		if @movie.save

			#do sth
			redirect_to '/movies'
		else
			render 'new'
		end 
	end 

	private
	  def movie_params
	  	params.require(:movie).permit(:title, :showtime)
	  end 
end
