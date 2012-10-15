class Team < ActiveRecord::Base
  attr_accessible :captain_id, :color, :goalie_id, :name, :season_id

  has_and_belongs_to_many :players 
  has_and_belongs_to_many :games
  belongs_to :season
end
