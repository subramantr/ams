require 'spec_helper'

describe "approvals/index" do
  before(:each) do
    assign(:approvals, [
      stub_model(Approval,
        :asset_id => 1,
        :approval_routing_scheme_id => 2,
        :approval_state_id => 3,
        :comments => "MyText",
        :requester_id => 4
      ),
      stub_model(Approval,
        :asset_id => 1,
        :approval_routing_scheme_id => 2,
        :approval_state_id => 3,
        :comments => "MyText",
        :requester_id => 4
      )
    ])
  end

  it "renders a list of approvals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
