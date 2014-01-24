require 'spec_helper'

describe "scheme_approvers/show" do
  before(:each) do
    @scheme_approver = assign(:scheme_approver, stub_model(SchemeApprover,
      :approver_id => 1,
      :approver_type => "Approver Type",
      :approval_routing_scheme_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Approver Type/)
    rendered.should match(/2/)
  end
end
