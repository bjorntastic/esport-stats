class AddParamsToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :match_id, :integer
  	add_column :players, :kills, :integer
  	add_column :players, :deaths, :integer
  	add_column :players, :assists, :integer
  	add_column :players, :minions, :integer
  	add_column :players, :total_gold, :integer
  end
end
