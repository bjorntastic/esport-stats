class League < ActiveRecord::Base
	has_many :teams
	has_many :players 
	has_many :matches

	def to_s
		"#{name}"
	end
	
end
