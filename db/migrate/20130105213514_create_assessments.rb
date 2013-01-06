class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :name
      t.integer :project_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
