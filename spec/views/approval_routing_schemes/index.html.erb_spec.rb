require 'spec_helper'

describe "approval_routing_schemes/index" do
  before(:each) do
    assign(:approval_routing_schemes, [
      stub_model(ApprovalRoutingScheme,
        :scheme_name => "Scheme Name",
        :scheme_type => "Scheme Type"
      ),
      stub_model(ApprovalRoutingScheme,
        :scheme_name => "Scheme Name",
        :scheme_type => "Scheme Type"
      )
    ])
  end

  it "renders a list of approval_routing_schemes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Scheme Name".to_s, :count => 2
    assert_select "tr>td", :text => "Scheme Type".to_s, :count => 2
  end
end
