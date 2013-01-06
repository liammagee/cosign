class AssessmentValue < ActiveRecord::Base
  attr_accessible :assessment_id, :subdomain_id, :value
end
