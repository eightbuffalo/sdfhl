class RemoveAssistsFromPlayerGoal < ActiveRecord::Migration
  def up
    remove_column :player_goals, :first_assist
    remove_column :player_goals, :second_assist
  end

  def down
    add_column :player_goals, :first_assist, :integer
    add_column :player_goals, :second_assist, :integer
  end
end
