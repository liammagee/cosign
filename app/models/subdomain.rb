class Subdomain < ActiveRecord::Base
  attr_accessible :description, :domain_id, :name
end
