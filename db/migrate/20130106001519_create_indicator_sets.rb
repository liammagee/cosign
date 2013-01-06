class CreateIndicatorSets < ActiveRecord::Migration
  def change
    create_table :indicator_sets do |t|
      t.string :name
      t.text :description
      t.text :source
      t.integer :creator_id

      t.timestamps
    end
  end
end
