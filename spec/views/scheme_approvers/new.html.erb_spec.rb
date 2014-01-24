require 'spec_helper'

describe "scheme_approvers/new" do
  before(:each) do
    assign(:scheme_approver, stub_model(SchemeApprover,
      :approver_id => 1,
      :approver_type => "MyString",
      :approval_routing_scheme_id => 1
    ).as_new_record)
  end

  it "renders new scheme_approver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scheme_approvers_path, "post" do
      assert_select "input#scheme_approver_approver_id[name=?]", "scheme_approver[approver_id]"
      assert_select "input#scheme_approver_approver_type[name=?]", "scheme_approver[approver_type]"
      assert_select "input#scheme_approver_approval_routing_scheme_id[name=?]", "scheme_approver[approval_routing_scheme_id]"
    end
  end
end
