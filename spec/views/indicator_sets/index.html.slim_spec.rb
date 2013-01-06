require 'spec_helper'

describe "indicator_sets/index" do
  before(:each) do
    assign(:indicator_sets, [
      stub_model(IndicatorSet,
        :name => "Name",
        :description => "MyText",
        :source => "MyText",
        :creator_id => 1
      ),
      stub_model(IndicatorSet,
        :name => "Name",
        :description => "MyText",
        :source => "MyText",
        :creator_id => 1
      )
    ])
  end

  it "renders a list of indicator_sets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
