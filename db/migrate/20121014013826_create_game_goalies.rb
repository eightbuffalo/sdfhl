class CreateGameGoalies < ActiveRecord::Migration
  def change
    create_table :game_goalies do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :team_id

      t.timestamps
    end
  end
end
