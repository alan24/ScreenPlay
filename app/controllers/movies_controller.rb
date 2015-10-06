class MoviesController < ApplicationController

	def index
		@movie = Description.order("RANDOM()").first
	end

	def new
		@movie = Movie.new
	end
end
