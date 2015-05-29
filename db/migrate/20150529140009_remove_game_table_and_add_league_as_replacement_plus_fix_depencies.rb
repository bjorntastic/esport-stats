class RemoveGameTableAndAddLeagueAsReplacementPlusFixDepencies < ActiveRecord::Migration
  def change
  	
  	drop_table :games
  	
  	#leagues
  	add_column :leagues, :game, :string
  	
  	#teams
  	add_column :teams, :league_id, :integer
  	remove_column :teams, :game_id, :integer
  	
  	#players
  	add_column :players, :league_id, :integer
  	remove_column :players, :game_id, :integer

  end
end
