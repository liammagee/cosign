require 'spec_helper'

describe "assessments/index" do
  before(:each) do
    assign(:assessments, [
      stub_model(Assessment,
        :name => "Name",
        :project_id => 1,
        :creator_id => 2
      ),
      stub_model(Assessment,
        :name => "Name",
        :project_id => 1,
        :creator_id => 2
      )
    ])
  end

  it "renders a list of assessments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
