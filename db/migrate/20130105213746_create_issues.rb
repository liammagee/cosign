class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.text :objective
      t.integer :significance
      t.integer :project_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
