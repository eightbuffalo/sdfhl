class Game < ActiveRecord::Base
  attr_accessible :date, :notes, :season_id, :time
  has_and_belongs_to_many :teams
  has_many :player_goals, :dependent=>:destroy
  has_many :team_shot_counts, :dependent=>:destroy
  has_many :player_penaltys,  :dependent=>:destroy
  has_many :game_referees, :dependent=>:destroy
  has_one  :game_scorekeeper, :dependent=>:destroy
  has_many :player_absences, :dependent=>:destroy
  has_many :player_stars, :dependent => :destroy

end
