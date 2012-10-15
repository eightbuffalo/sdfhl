class CreateTeamShotCounts < ActiveRecord::Migration
  def change
    create_table :team_shot_counts do |t|
      t.integer :game_id
      t.integer :team_id
      t.integer :period
      t.integer :count

      t.timestamps
    end
  end
end
