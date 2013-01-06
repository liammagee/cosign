require 'spec_helper'

describe "issues/index" do
  before(:each) do
    assign(:issues, [
      stub_model(Issue,
        :name => "Name",
        :description => "MyText",
        :objective => "MyText",
        :significance => 1,
        :project_id => 2,
        :creator_id => 3
      ),
      stub_model(Issue,
        :name => "Name",
        :description => "MyText",
        :objective => "MyText",
        :significance => 1,
        :project_id => 2,
        :creator_id => 3
      )
    ])
  end

  it "renders a list of issues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
