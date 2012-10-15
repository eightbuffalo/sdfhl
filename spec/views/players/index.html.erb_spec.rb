require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :position => "Position",
        :shoots => "Shoots",
        :first_name => "First Name",
        :last_name => "Last Name",
        :photo => "",
        :phone_number => "Phone Number",
        :email_address => "Email Address",
        :signed_waiver => false
      ),
      stub_model(Player,
        :position => "Position",
        :shoots => "Shoots",
        :first_name => "First Name",
        :last_name => "Last Name",
        :photo => "",
        :phone_number => "Phone Number",
        :email_address => "Email Address",
        :signed_waiver => false
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Shoots".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
