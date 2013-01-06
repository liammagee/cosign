require "spec_helper"

describe SubdomainsController do
  describe "routing" do

    it "routes to #index" do
      get("/subdomains").should route_to("subdomains#index")
    end

    it "routes to #new" do
      get("/subdomains/new").should route_to("subdomains#new")
    end

    it "routes to #show" do
      get("/subdomains/1").should route_to("subdomains#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subdomains/1/edit").should route_to("subdomains#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subdomains").should route_to("subdomains#create")
    end

    it "routes to #update" do
      put("/subdomains/1").should route_to("subdomains#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subdomains/1").should route_to("subdomains#destroy", :id => "1")
    end

  end
end
