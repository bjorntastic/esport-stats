class MatchesController < ApplicationController

	def index
		@matches = Match.all
		teams = Team.all
		@teams_hash = Hash.new
		teams.each do |t|
			@teams_hash[t.id] = t.name
		end
	end

	def show
		@match = Match.find(params[:id])
	end

	def new
		@match = Match.new
		@teams = Team.all
	end

	def create
		@match = Match.new(match_params)

		if @match.save
			flash[:notice] = 'Match created successfully.'
			redirect_to :matches
		else
			render 'new'
		end
	end

	def edit
		@match = Match.find(params[:id])
		@teams = Team.all
	end

	def update
		if Match.find(params[:id]).update(match_params)
			flash[:notice] = 'Match updated successfully.'
			redirect_to :match
		else
			render 'edit'
		end
	end

	def destroy
		Match.find(params[:id]).destroy
		flash[:notice] = "Match deleted successfully."
		redirect_to :matches
	end

	private

	def match_params
		params.require(:match).permit(:start_time, :league_id, :match_length, :winner_id, :loser_id)
	end

end
