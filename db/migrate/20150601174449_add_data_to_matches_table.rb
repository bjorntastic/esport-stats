class AddDataToMatchesTable < ActiveRecord::Migration
  def change
  	add_column :matches, :winner_id, :integer
  	add_column :matches, :loser_id, :integer
  	remove_column :matches, :t1_id
  	remove_column :matches, :t2_id
  end
end
