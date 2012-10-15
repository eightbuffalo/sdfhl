class CreatePenaltyTypes < ActiveRecord::Migration
  def change
    create_table :penalty_types do |t|
      t.integer :penalty_id
      t.text :description
      t.time :duration

      t.timestamps
    end
  end
end
