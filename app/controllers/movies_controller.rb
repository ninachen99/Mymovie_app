class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end 

	def new
		@movie = Movie.new
	end 
    
    def show
		@movie = Movie.find(params[:id])
		@theaters = @movie.theaters
	end 

	def create
		@movie = Movie.new(movie_params)
	
		if @movie.save

			#do sth
			redirect_to '/movies'
		else
			render '/new'
		end 
	end 

	def edit
		@movie = Movie.find(params[:id])
	end 

	def update
		@movie = Movie.find(params[:id])
		if @movie.update_attributes(movie_params)
			flash[:success] = "Movie updated!"
			redirect_to [:movies]
		else
		    render :edit
	    end 
	end 

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end 

	private
	  def movie_params
	  	params.require(:movie).permit(:title, :showtime)
	  end 
end
