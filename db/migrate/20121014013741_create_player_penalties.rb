class CreatePlayerPenalties < ActiveRecord::Migration
  def change
    create_table :player_penalties do |t|
      t.integer :player_id
      t.time :time_in_period
      t.time :duration
      t.integer :period
      t.integer :game_id
      t.integer :penalty_type_id

      t.timestamps
    end
  end
end
