require 'spec_helper'

describe "ApprovalStates" do
  describe "GET /approval_states" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get approval_states_path
      response.status.should be(200)
    end
  end
end
