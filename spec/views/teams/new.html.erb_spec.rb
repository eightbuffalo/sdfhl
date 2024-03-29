require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :name => "MyString",
      :color => "MyString",
      :season_id => 1,
      :captain_id => 1,
      :goalie_id => 1
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_color", :name => "team[color]"
      assert_select "input#team_season_id", :name => "team[season_id]"
      assert_select "input#team_captain_id", :name => "team[captain_id]"
      assert_select "input#team_goalie_id", :name => "team[goalie_id]"
    end
  end
end
