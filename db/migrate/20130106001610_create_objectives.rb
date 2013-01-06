class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.text :description
      t.integer :desired_direction
      t.integer :issue_id

      t.timestamps
    end
  end
end
