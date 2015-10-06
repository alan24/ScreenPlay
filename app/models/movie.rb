class Movie < ActiveRecord::Base
	validates :movie, :presence => true, :length => {:maximum => 200, :minimum => 2}
	validates :actors, :presence => true, :length => {:maximum => 1500, :minimum => 4}
	validates :director, :presence => true, :length => {:maximum => 100, :minimum => 2}
	validates :description, :presence => true, :length => {:maximum => 2000, :minimum => 2}
end
