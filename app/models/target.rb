class Target < ActiveRecord::Base
  attr_accessible :description, :desired_direction, :indicator_id, :value
end
