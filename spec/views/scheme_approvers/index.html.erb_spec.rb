require 'spec_helper'

describe "scheme_approvers/index" do
  before(:each) do
    assign(:scheme_approvers, [
      stub_model(SchemeApprover,
        :approver_id => 1,
        :approver_type => "Approver Type",
        :approval_routing_scheme_id => 2
      ),
      stub_model(SchemeApprover,
        :approver_id => 1,
        :approver_type => "Approver Type",
        :approval_routing_scheme_id => 2
      )
    ])
  end

  it "renders a list of scheme_approvers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Approver Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
