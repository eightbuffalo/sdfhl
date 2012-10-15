class CreateGameScorekeepers < ActiveRecord::Migration
  def change
    create_table :game_scorekeepers do |t|
      t.integer :game_id
      t.integer :player_id

      t.timestamps
    end
  end
end
