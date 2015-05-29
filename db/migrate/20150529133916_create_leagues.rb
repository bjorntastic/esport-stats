class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :format
      t.datetime :start_date
      t.datetime :end_date
      t.integer :game_id
      t.timestamps null: false
    end
  end
end
