class LeaguesController < ApplicationController

	def index
		@leagues = League.all
	end

	def show
		@league = League.find(params[:id])
	end

	def new
		@league = League.new
	end

	def create
		@league = League.new

		if @league.update_attributes(league_params)
			flash[:notice] = 'New League created'
			redirect_to :leagues
		else
			render 'new'
		end
	end

	def edit
		@league = League.find(params[:id])
	end

	def update
		@league = League.find(params[:id])

		if @league.update(league_params)
			flash[:notice] = 'League updated successfully.'
			redirect_to :league
		else
			render 'edit'
		end
	end

	def destroy
		League.find(params[:id]).destroy
		redirect_to :leagues
	end

	private

	def league_params
		params.require(:league).permit(:name, :format, :game_name, :start_date, :end_date)
	end

end
