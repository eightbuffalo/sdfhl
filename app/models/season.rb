class Season < ActiveRecord::Base
  attr_accessible :name
  has_many :teams
  has_many :players, :through=> :teams
  has_many :games, :through =>:teams , :dependent =>:destroy
end
