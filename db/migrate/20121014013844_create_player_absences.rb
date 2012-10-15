class CreatePlayerAbsences < ActiveRecord::Migration
  def change
    create_table :player_absences do |t|
      t.integer :game_id
      t.integer :player_id

      t.timestamps
    end
  end
end
