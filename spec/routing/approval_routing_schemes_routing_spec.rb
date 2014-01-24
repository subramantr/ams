require "spec_helper"

describe ApprovalRoutingSchemesController do
  describe "routing" do

    it "routes to #index" do
      get("/approval_routing_schemes").should route_to("approval_routing_schemes#index")
    end

    it "routes to #new" do
      get("/approval_routing_schemes/new").should route_to("approval_routing_schemes#new")
    end

    it "routes to #show" do
      get("/approval_routing_schemes/1").should route_to("approval_routing_schemes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/approval_routing_schemes/1/edit").should route_to("approval_routing_schemes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/approval_routing_schemes").should route_to("approval_routing_schemes#create")
    end

    it "routes to #update" do
      put("/approval_routing_schemes/1").should route_to("approval_routing_schemes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/approval_routing_schemes/1").should route_to("approval_routing_schemes#destroy", :id => "1")
    end

  end
end
