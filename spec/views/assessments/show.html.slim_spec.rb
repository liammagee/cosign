require 'spec_helper'

describe "assessments/show" do
  before(:each) do
    @assessment = assign(:assessment, stub_model(Assessment,
      :name => "Name",
      :project_id => 1,
      :creator_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
