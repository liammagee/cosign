require 'spec_helper'

describe "indicators/show" do
  before(:each) do
    @indicator = assign(:indicator, stub_model(Indicator,
      :name => "Name",
      :description => "MyText",
      :code => "Code",
      :unit_of_measure => "Unit Of Measure",
      :indicator_set_id => 1,
      :project_id => 2,
      :creator_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Code/)
    rendered.should match(/Unit Of Measure/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
