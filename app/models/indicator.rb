class Indicator < ActiveRecord::Base
  attr_accessible :code, :creator_id, :description, :indicator_set_id, :name, :project_id, :unit_of_measure
end
