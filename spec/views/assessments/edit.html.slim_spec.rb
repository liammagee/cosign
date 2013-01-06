require 'spec_helper'

describe "assessments/edit" do
  before(:each) do
    @assessment = assign(:assessment, stub_model(Assessment,
      :name => "MyString",
      :project_id => 1,
      :creator_id => 1
    ))
  end

  it "renders the edit assessment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assessments_path(@assessment), :method => "post" do
      assert_select "input#assessment_name", :name => "assessment[name]"
      assert_select "input#assessment_project_id", :name => "assessment[project_id]"
      assert_select "input#assessment_creator_id", :name => "assessment[creator_id]"
    end
  end
end
