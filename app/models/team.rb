class Team < ActiveRecord::Base
	belongs_to :league
	has_many :players

	def to_s
		"#{name}"
	end
	
end
