class CreateAssessmentValues < ActiveRecord::Migration
  def change
    create_table :assessment_values do |t|
      t.float :value
      t.integer :assessment_id
      t.integer :subdomain_id

      t.timestamps
    end
  end
end
