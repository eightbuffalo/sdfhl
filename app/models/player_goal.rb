class PlayerGoal < ActiveRecord::Base
  attr_accessible :first_assist, :game_id, :goaltype_id, :period, :scored_by, :second_assist, :team_id, :time_in_period
end
