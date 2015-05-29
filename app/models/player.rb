class Player < ActiveRecord::Base
	belongs_to :team
	belongs_to :league
	belongs_to :match
end
