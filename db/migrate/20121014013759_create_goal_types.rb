class CreateGoalTypes < ActiveRecord::Migration
  def change
    create_table :goal_types do |t|
      t.integer :goaltype_id
      t.string :description

      t.timestamps
    end
  end
end
