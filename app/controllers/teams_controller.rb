class TeamsController < ApplicationController

	def index
		@teams = Team.all
		@matches = Match.where(:league_id => "4")
		# @matches = Match.where("league_id = ?", "4")
	end

	def show
		@team = Team.find(params[:id])
	end
	
end
