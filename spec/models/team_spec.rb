require 'spec_helper'

describe Team do
  pending "add some examples to (or delete) #{__FILE__}"

  it {should have_and_belong_to_many(:players)}
  it {should have_and_belong_to_many(:games)}
  it {should belong_to(:season)}

  it "should validate the captain on creation" do

  end

  describe "#captain" do

  end

  describe "#goalie" do

  end

  describe "#wins" do

  end
   
  describe "#ties" do

  end
   
  describe "#losses" do

  end
   
  describe "#points" do

  end  
end
