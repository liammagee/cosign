require 'spec_helper'

describe "indicators/index" do
  before(:each) do
    assign(:indicators, [
      stub_model(Indicator,
        :name => "Name",
        :description => "MyText",
        :code => "Code",
        :unit_of_measure => "Unit Of Measure",
        :indicator_set_id => 1,
        :project_id => 2,
        :creator_id => 3
      ),
      stub_model(Indicator,
        :name => "Name",
        :description => "MyText",
        :code => "Code",
        :unit_of_measure => "Unit Of Measure",
        :indicator_set_id => 1,
        :project_id => 2,
        :creator_id => 3
      )
    ])
  end

  it "renders a list of indicators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Unit Of Measure".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
