require 'spec_helper'

describe Project do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
    @creator = stub_model(User,
      :email => "random.email@gmail.com"
    )
    @project = stub_model(Project,
      :name => "Name",
      :description => "My Project Description",
      :general_issue => "My General Issue",
      :normative_goal => "My Normative Goal",
      :creator => @creator
    )
  end

  it { @project.creator.should == @creator }

end
