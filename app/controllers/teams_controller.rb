class TeamsController < ApplicationController

	def index
		@teams = Team.all
		@matches = Match.all
	end

	def show
		@team = Team.find(params[:id])
	end
	
end
