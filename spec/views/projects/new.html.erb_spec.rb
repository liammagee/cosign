require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyText",
      :general_issue => "MyText",
      :normative_goal => "MyText",
      :creator_id => 1
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "textarea#project_description", :name => "project[description]"
      assert_select "textarea#project_general_issue", :name => "project[general_issue]"
      assert_select "textarea#project_normative_goal", :name => "project[normative_goal]"
      assert_select "input#project_creator_id", :name => "project[creator_id]"
    end
  end
end
