class CreatePlayerAssists < ActiveRecord::Migration
  def change
    create_table :player_assists do |t|
      t.integer :player_id
      t.integer :goal_id
      t.integer :order

      t.timestamps
    end
  end
end
