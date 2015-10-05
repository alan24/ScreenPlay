class MoviesController < ApplicationController
	def index
		@description = Description.order("RANDOM()").first
	end
end
