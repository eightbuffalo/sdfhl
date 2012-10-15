class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :color
      t.integer :season_id
      t.integer :captain_id
      t.integer :goalie_id

      t.timestamps
    end
  end
end
