class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
      t.string :name
      t.text :description
      t.string :code
      t.string :unit_of_measure
      t.integer :indicator_set_id
      t.integer :project_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
