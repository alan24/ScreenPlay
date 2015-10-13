class TelevisionsController < ApplicationController

	def index
		@television = Television.order("RANDOM()").first(params[:television_id])
	end

	def new
		@television = Television.new
	end

	def create
		@television = Television.create(quote_params)
		if @television.invalid?
			flash[:error] = "<strong>The data was invalid.<strong>Reenter the data."
		end
		redirect_to televisions_path
	end

	private

	def quote_params
		params.require(:television).permit(:title, :actors, :genres, :channels, :description)
	end

end
