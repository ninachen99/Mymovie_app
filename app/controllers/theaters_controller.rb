class TheatersController < ApplicationController
	def index
		@theaters = Theater.all
	end 

	def show
		@theater = Theater.find(params[:id])
		@movies = @theater.movies
		@showtimes = @theater.showtimes
	end 
end
