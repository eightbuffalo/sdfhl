require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :season_id => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_season_id", :name => "game[season_id]"
      assert_select "textarea#game_notes", :name => "game[notes]"
    end
  end
end
