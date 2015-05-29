class LeaguesController < ApplicationController
	
	def welcome
	end

	def index
		@leagues = League.all
	end

	def show
		@league = League.find(params[:id])
	end

end
