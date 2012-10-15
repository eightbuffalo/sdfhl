require 'spec_helper'

describe StandingsController do

  describe "GET 'player'" do
    it "returns the player standings for the current season if there are no params" do
      get 'player'
      response.should be_success
    end
    it "returns the player standings for the season specified" do
      get 'player',:season_id=>1
      expect(assigns(:player)).to eq(Season(season_id).players.map{|p|players.standings}.sort_by( 
    end
  end

  describe "GET 'goalie'" do
    it "returns http success" do
      get 'goalie'
      response.should be_success
    end
  end

  describe "GET 'team'" do
    it "returns http success" do
      get 'team'
      response.should be_success
    end
  end

  describe "GET 'playoffs'" do
    it "returns http success" do
      get 'playoffs'
      response.should be_success
    end
  end

end
