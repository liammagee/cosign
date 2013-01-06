require "spec_helper"

describe IndicatorSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/indicator_sets").should route_to("indicator_sets#index")
    end

    it "routes to #new" do
      get("/indicator_sets/new").should route_to("indicator_sets#new")
    end

    it "routes to #show" do
      get("/indicator_sets/1").should route_to("indicator_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/indicator_sets/1/edit").should route_to("indicator_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/indicator_sets").should route_to("indicator_sets#create")
    end

    it "routes to #update" do
      put("/indicator_sets/1").should route_to("indicator_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/indicator_sets/1").should route_to("indicator_sets#destroy", :id => "1")
    end

  end
end
