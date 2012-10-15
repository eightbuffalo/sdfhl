class AddGenderColumnToPlayer < ActiveRecord::Migration
  def up
    add_column :player, :gender, :string
  end
  def down
    remove_column :player, :gender
  end
end
