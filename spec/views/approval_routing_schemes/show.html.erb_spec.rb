require 'spec_helper'

describe "approval_routing_schemes/show" do
  before(:each) do
    @approval_routing_scheme = assign(:approval_routing_scheme, stub_model(ApprovalRoutingScheme,
      :scheme_name => "Scheme Name",
      :scheme_type => "Scheme Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Scheme Name/)
    rendered.should match(/Scheme Type/)
  end
end
