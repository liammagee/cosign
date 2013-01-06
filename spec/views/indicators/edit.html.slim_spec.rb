require 'spec_helper'

describe "indicators/edit" do
  before(:each) do
    @indicator = assign(:indicator, stub_model(Indicator,
      :name => "MyString",
      :description => "MyText",
      :code => "MyString",
      :unit_of_measure => "MyString",
      :indicator_set_id => 1,
      :project_id => 1,
      :creator_id => 1
    ))
  end

  it "renders the edit indicator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => indicators_path(@indicator), :method => "post" do
      assert_select "input#indicator_name", :name => "indicator[name]"
      assert_select "textarea#indicator_description", :name => "indicator[description]"
      assert_select "input#indicator_code", :name => "indicator[code]"
      assert_select "input#indicator_unit_of_measure", :name => "indicator[unit_of_measure]"
      assert_select "input#indicator_indicator_set_id", :name => "indicator[indicator_set_id]"
      assert_select "input#indicator_project_id", :name => "indicator[project_id]"
      assert_select "input#indicator_creator_id", :name => "indicator[creator_id]"
    end
  end
end
