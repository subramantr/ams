require 'spec_helper'

describe "approval_routing_schemes/new" do
  before(:each) do
    assign(:approval_routing_scheme, stub_model(ApprovalRoutingScheme,
      :scheme_name => "MyString",
      :scheme_type => "MyString"
    ).as_new_record)
  end

  it "renders new approval_routing_scheme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", approval_routing_schemes_path, "post" do
      assert_select "input#approval_routing_scheme_scheme_name[name=?]", "approval_routing_scheme[scheme_name]"
      assert_select "input#approval_routing_scheme_scheme_type[name=?]", "approval_routing_scheme[scheme_type]"
    end
  end
end
