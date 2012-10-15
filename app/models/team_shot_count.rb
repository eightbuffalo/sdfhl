class TeamShotCount < ActiveRecord::Base
  attr_accessible :count, :game_id, :period, :team_id
end
