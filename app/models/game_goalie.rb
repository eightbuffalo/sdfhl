class GameGoalie < ActiveRecord::Base
  attr_accessible :game_id, :player_id, :team_id
end
