require 'spec_helper'

describe "subdomains/index" do
  before(:each) do
    assign(:subdomains, [
      stub_model(Subdomain,
        :name => "Name",
        :description => "MyText",
        :domain_id => 1
      ),
      stub_model(Subdomain,
        :name => "Name",
        :description => "MyText",
        :domain_id => 1
      )
    ])
  end

  it "renders a list of subdomains" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
