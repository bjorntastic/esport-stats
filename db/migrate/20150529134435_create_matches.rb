class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
   	  t.datetime :start_time
   	  t.integer :league_id
   	  t.integer :t1_id
   	  t.integer :t2_id
   	  t.float :match_length
      t.timestamps null: false
    end
  end
end
