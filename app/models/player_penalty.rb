class PlayerPenalty < ActiveRecord::Base
  attr_accessible :duration, :game_id, :penalty_type_id, :period, :player_id, :time_in_period
end
