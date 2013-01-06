require 'spec_helper'

describe "subdomains/show" do
  before(:each) do
    @subdomain = assign(:subdomain, stub_model(Subdomain,
      :name => "Name",
      :description => "MyText",
      :domain_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
