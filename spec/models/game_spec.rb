require 'spec_helper'

describe Game do
  it  {should have_and_belong_to_many(:teams)}
  it  {should have_many(:player_goals).dependent(:destroy)}
  it  {should have_many(:team_shot_counts).dependent(:destroy)}
  it  {should have_many(:player_penaltys).dependent(:destroy)} 
  it  {should have_many(:game_referees).dependent(:destroy)}
  it  {should have_one(:game_scorekeeper).dependent(:destroy)}
  it  {should have_many(:player_absences).dependent(:destroy)}
  it  {should have_many(:player_stars).dependent(:destroy)}

  describe "#winner" do
    it "should calculate the winner from the goal totals" do
      @game.winner.should == @team1
    end
    it "should return nil if it is a tie" do
      @tie_game.winner.should == nil
    end
  end

end
