require 'spec_helper'

describe "indicator_sets/new" do
  before(:each) do
    assign(:indicator_set, stub_model(IndicatorSet,
      :name => "MyString",
      :description => "MyText",
      :source => "MyText",
      :creator_id => 1
    ).as_new_record)
  end

  it "renders new indicator_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => indicator_sets_path, :method => "post" do
      assert_select "input#indicator_set_name", :name => "indicator_set[name]"
      assert_select "textarea#indicator_set_description", :name => "indicator_set[description]"
      assert_select "textarea#indicator_set_source", :name => "indicator_set[source]"
      assert_select "input#indicator_set_creator_id", :name => "indicator_set[creator_id]"
    end
  end
end
