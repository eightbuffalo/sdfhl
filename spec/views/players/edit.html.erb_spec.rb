require 'spec_helper'

describe "players/edit" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :position => "MyString",
      :shoots => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :photo => "",
      :phone_number => "MyString",
      :email_address => "MyString",
      :signed_waiver => false
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path(@player), :method => "post" do
      assert_select "input#player_position", :name => "player[position]"
      assert_select "input#player_shoots", :name => "player[shoots]"
      assert_select "input#player_first_name", :name => "player[first_name]"
      assert_select "input#player_last_name", :name => "player[last_name]"
      assert_select "input#player_photo", :name => "player[photo]"
      assert_select "input#player_phone_number", :name => "player[phone_number]"
      assert_select "input#player_email_address", :name => "player[email_address]"
      assert_select "input#player_signed_waiver", :name => "player[signed_waiver]"
    end
  end
end
