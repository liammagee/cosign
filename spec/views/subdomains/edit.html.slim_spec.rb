require 'spec_helper'

describe "subdomains/edit" do
  before(:each) do
    @subdomain = assign(:subdomain, stub_model(Subdomain,
      :name => "MyString",
      :description => "MyText",
      :domain_id => 1
    ))
  end

  it "renders the edit subdomain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subdomains_path(@subdomain), :method => "post" do
      assert_select "input#subdomain_name", :name => "subdomain[name]"
      assert_select "textarea#subdomain_description", :name => "subdomain[description]"
      assert_select "input#subdomain_domain_id", :name => "subdomain[domain_id]"
    end
  end
end
