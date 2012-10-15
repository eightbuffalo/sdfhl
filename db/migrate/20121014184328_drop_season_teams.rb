class DropSeasonTeams < ActiveRecord::Migration
  def up
    drop_table :season_teams  
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
