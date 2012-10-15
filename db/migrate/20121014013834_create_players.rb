class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :position
      t.string :shoots
      t.string :first_name
      t.string :last_name
      t.binary :photo
      t.string :phone_number
      t.string :email_address
      t.boolean :signed_waiver

      t.timestamps
    end
  end
end
