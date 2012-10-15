class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :season_id
      t.date :date
      t.time :time
      t.text :notes

      t.timestamps
    end
  end
end
