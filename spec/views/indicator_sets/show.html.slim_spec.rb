require 'spec_helper'

describe "indicator_sets/show" do
  before(:each) do
    @indicator_set = assign(:indicator_set, stub_model(IndicatorSet,
      :name => "Name",
      :description => "MyText",
      :source => "MyText",
      :creator_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
