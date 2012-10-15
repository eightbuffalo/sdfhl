class Player < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name, :phone_number, :photo, :position, :shoots, :signed_waiver,:gender
end
