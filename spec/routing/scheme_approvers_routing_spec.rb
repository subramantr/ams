require "spec_helper"

describe SchemeApproversController do
  describe "routing" do

    it "routes to #index" do
      get("/scheme_approvers").should route_to("scheme_approvers#index")
    end

    it "routes to #new" do
      get("/scheme_approvers/new").should route_to("scheme_approvers#new")
    end

    it "routes to #show" do
      get("/scheme_approvers/1").should route_to("scheme_approvers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scheme_approvers/1/edit").should route_to("scheme_approvers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scheme_approvers").should route_to("scheme_approvers#create")
    end

    it "routes to #update" do
      put("/scheme_approvers/1").should route_to("scheme_approvers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scheme_approvers/1").should route_to("scheme_approvers#destroy", :id => "1")
    end

  end
end
