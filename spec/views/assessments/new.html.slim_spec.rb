require 'spec_helper'

describe "assessments/new" do
  before(:each) do
    assign(:assessment, stub_model(Assessment,
      :name => "MyString",
      :project_id => 1,
      :creator_id => 1
    ).as_new_record)
  end

  it "renders new assessment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assessments_path, :method => "post" do
      assert_select "input#assessment_name", :name => "assessment[name]"
      assert_select "input#assessment_project_id", :name => "assessment[project_id]"
      assert_select "input#assessment_creator_id", :name => "assessment[creator_id]"
    end
  end
end
