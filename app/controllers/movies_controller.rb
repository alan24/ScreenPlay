class MoviesController < ApplicationController

	def index
		@movie = Movie.order("RANDOM()").first
	end

	def create
		@movie = Movie.create(movie_params)
		if @movie.invalid?
			flash[:error] = 'Could not enter the data in. Please, enter all the missing data.'
		end
		redirect_to root_path
	end

	private

	def movie_params
		params.require(:movie).permit(:movie, :actors, :director, :description)
	end
end
