require 'spec_helper'

describe Season do
  it { should have_many(:teams).dependent(:destroy) }
  it { should have_many(:players).through(:teams) }
  it { should have_many(:games).through(:teams)}
end
