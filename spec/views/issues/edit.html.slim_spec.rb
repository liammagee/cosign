require 'spec_helper'

describe "issues/edit" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :name => "MyString",
      :description => "MyText",
      :objective => "MyText",
      :significance => 1,
      :project_id => 1,
      :creator_id => 1
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path(@issue), :method => "post" do
      assert_select "input#issue_name", :name => "issue[name]"
      assert_select "textarea#issue_description", :name => "issue[description]"
      assert_select "textarea#issue_objective", :name => "issue[objective]"
      assert_select "input#issue_significance", :name => "issue[significance]"
      assert_select "input#issue_project_id", :name => "issue[project_id]"
      assert_select "input#issue_creator_id", :name => "issue[creator_id]"
    end
  end
end
