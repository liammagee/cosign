require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :description => "My Project Description",
        :general_issue => "My General Issue",
        :normative_goal => "My Normative Goal",
        :creator_id => 1
      ),
      stub_model(Project,
        :name => "Name",
        :description => "My Project Description",
        :general_issue => "My General Issue",
        :normative_goal => "My Normative Goal",
        :creator_id => 1
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "My Project Description".to_s, :count => 2
    assert_select "tr>td", :text => "My General Issue".to_s, :count => 2
    assert_select "tr>td", :text => "My Normative Goal".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
