require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :position => "Position",
      :shoots => "Shoots",
      :first_name => "First Name",
      :last_name => "Last Name",
      :photo => "",
      :phone_number => "Phone Number",
      :email_address => "Email Address",
      :signed_waiver => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    rendered.should match(/Shoots/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(//)
    rendered.should match(/Phone Number/)
    rendered.should match(/Email Address/)
    rendered.should match(/false/)
  end
end
