class Assessment < ActiveRecord::Base
  attr_accessible :creator_id, :name, :project_id
end
