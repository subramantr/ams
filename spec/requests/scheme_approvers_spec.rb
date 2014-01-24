require 'spec_helper'

describe "SchemeApprovers" do
  describe "GET /scheme_approvers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get scheme_approvers_path
      response.status.should be(200)
    end
  end
end
