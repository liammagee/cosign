class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :general_issue
      t.text :normative_goal
      t.integer :creator_id

      t.timestamps
    end
  end
end
