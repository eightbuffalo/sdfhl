class CreatePlayerStars < ActiveRecord::Migration
  def change
    create_table :player_stars do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :level

      t.timestamps
    end
  end
end
