require "spec_helper"

describe ThermostatsController do
  describe "routing" do

    it "routes to #index" do
      get("/thermostats").should route_to("thermostats#index")
    end

    it "routes to #new" do
      get("/thermostats/new").should route_to("thermostats#new")
    end

    it "routes to #show" do
      get("/thermostats/1").should route_to("thermostats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/thermostats/1/edit").should route_to("thermostats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/thermostats").should route_to("thermostats#create")
    end

    it "routes to #update" do
      put("/thermostats/1").should route_to("thermostats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/thermostats/1").should route_to("thermostats#destroy", :id => "1")
    end

  end
end
