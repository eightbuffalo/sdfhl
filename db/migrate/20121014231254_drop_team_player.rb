class DropTeamPlayer < ActiveRecord::Migration
  def up
    drop_table :team_players
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
