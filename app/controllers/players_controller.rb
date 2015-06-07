class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		@player = Player.new
		@teams = Team.all
	end

	def create
		@player = Player.new(player_params)

		if @player.save
			flash[:notice] = 'Player created successfully.'
			redirect_to :players
		else
			render 'new'
		end
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		if Player.find(params[:id]).update(player_params)
			flash[:notice] = 'Player updated successfully.'
			redirect_to :player
		else
			render 'edit'
		end
	end

	def destroy
		Player.find(params[:id]).destroy
		redirect_to :players
	end

	private

	def player_params
		params.require(:player).permit(:name, :role, :team_id, :match_id, :league_id, :kills, :deaths, :assists, :minions, :total_gold)
	end

end
