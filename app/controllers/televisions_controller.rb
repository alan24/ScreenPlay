class TelevisionsController < ApplicationController

	def index
		@television = Television.order("RANDOM()").first(params[:television_id])
	end

	def new
		@television = Television.new
	end

	def create
		@televison = Television.create(quote_params)
		redirect_to shows_path
	end

	private

	def quote_params
		params.require(:television).permit(:title, :actors, :genres, :channels, :description)
	end

end
