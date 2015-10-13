class Television < ActiveRecord::Base
	validates :title, :presence => true, :length => {:maximum => 300, :minimum => 3}
	validates :actors, :presence => true
	validates :genres, :presence => true
	validates :channels, :presence => true
	validates :description, :presence => true
end
