class Project < ActiveRecord::Base
  attr_accessible :creator_id, :description, :general_issue, :name, :normative_goal
  belongs_to :creator, :class_name => User
end
