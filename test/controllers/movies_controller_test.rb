require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
   test "movie show page" do
   		movie = FactoryGirl.create(:movie)
   		get :show, :id => movie.id
   		assert_response :success
   	end
end
