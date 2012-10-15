require 'spec_helper'

describe Player do
  it { should have_many(:player_goals).dependent(:destroy)} 
  it { should have_many(:player_assists).dependent(:destroy)} 
  it { should have_many(:player_penaltys).dependent(:destroy)} 
  it { should have_many(:player_stars).dependent(:destroy)} 
  it { should have_many(:player_absences).dependent(:destroy)} 


  describe "points" do
    it "should be goals + assists" do

    end
  end

  describe "penalties_in_minutes" do

  end

  describe "points_per_game" do

  end

  describe "goals_per_game" do

  end

  describe "empty_net_goals" do

  end

  describe "#game_winning_goals" do

  end
  
  describe "#short_handed_goals" do

  end

  describe "#games_played" do

  end
 
  describe "#assists" do

  end

  describe "goalie stats" do
    describe "#save_percentage" do

    end
    describe "#goals_averaged_against" do

  
    end
    describe "#shut_outs" do

    end
    describe "#goals_against" do

    end
    describe "#shots_against" do


    end
  end
end
