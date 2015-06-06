class TeamsController < ApplicationController

	def index
		@teams = Team.all
		@match_count = Match.where(:league_id => "4").count
		# @matches = Match.where("league_id = ?", "4")
	end

	def show
		@team = Team.find(params[:id])
	end

	def new
		@team = Team.new
		@leagues = League.all
	end

	def create
		@team = Team.new(team_params)
		if @team.save
		  flash[:notice] = 'Team added successfully.'
		  redirect_to @team
		else
		  render 'new'
		end
	end

	def edit
		@team = Team.find(params[:id])
		@leagues = League.all
	end

	def update
		@team = Team.find(params[:id])
		
		if @team.update(team_params)
			flash[:notice] = 'Team updated successfully.'
			redirect_to @team
		else
			render 'edit'
		end
	end

	def destroy
		Team.find(params[:id]).destroy
		redirect_to :teams
	end

	private

	def team_params
		params.require(:team).permit(:name, :country, :captain, :league_id)
	end
	
end
