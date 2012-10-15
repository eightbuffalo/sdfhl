class GameScorekeeper < ActiveRecord::Base
  attr_accessible :game_id, :player_id
end
