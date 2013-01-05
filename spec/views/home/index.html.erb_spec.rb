require 'spec_helper'

describe "home/index" do

  before do
  render
  end

  it "renders a heading" do
    expect(rendered).to include("Defining Sustainability")
  end
end
