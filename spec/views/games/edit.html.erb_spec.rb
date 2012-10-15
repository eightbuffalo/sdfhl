require 'spec_helper'

describe "games/edit" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :season_id => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "input#game_season_id", :name => "game[season_id]"
      assert_select "textarea#game_notes", :name => "game[notes]"
    end
  end
end
