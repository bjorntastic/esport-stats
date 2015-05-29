class CleanUpAfterRemoveGames < ActiveRecord::Migration
  def change
  	remove_column :leagues, :game_id, :integer
  	remove_column :leagues, :game, :string
  	add_column :leagues, :game_name, :string
  	
  end
end
