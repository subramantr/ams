require "spec_helper"

describe ApprovalStatesController do
  describe "routing" do

    it "routes to #index" do
      get("/approval_states").should route_to("approval_states#index")
    end

    it "routes to #new" do
      get("/approval_states/new").should route_to("approval_states#new")
    end

    it "routes to #show" do
      get("/approval_states/1").should route_to("approval_states#show", :id => "1")
    end

    it "routes to #edit" do
      get("/approval_states/1/edit").should route_to("approval_states#edit", :id => "1")
    end

    it "routes to #create" do
      post("/approval_states").should route_to("approval_states#create")
    end

    it "routes to #update" do
      put("/approval_states/1").should route_to("approval_states#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/approval_states/1").should route_to("approval_states#destroy", :id => "1")
    end

  end
end
