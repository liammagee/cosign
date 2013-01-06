class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.text :description
      t.integer :desired_direction
      t.string :value
      t.integer :indicator_id

      t.timestamps
    end
  end
end
