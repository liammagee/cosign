class Issue < ActiveRecord::Base
  attr_accessible :creator_id, :description, :name, :objective, :project_id, :significance
end
