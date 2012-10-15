class CreatePlayerGoals < ActiveRecord::Migration
  def change
    create_table :player_goals do |t|
      t.integer :team_id
      t.integer :scored_by
      t.integer :first_assist
      t.integer :second_assist
      t.time :time_in_period
      t.integer :period
      t.integer :game_id
      t.integer :goaltype_id

      t.timestamps
    end
  end
end
