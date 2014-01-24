require 'spec_helper'

describe "approvals/edit" do
  before(:each) do
    @approval = assign(:approval, stub_model(Approval,
      :asset_id => 1,
      :approval_routing_scheme_id => 1,
      :approval_state_id => 1,
      :comments => "MyText",
      :requester_id => 1
    ))
  end

  it "renders the edit approval form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", approval_path(@approval), "post" do
      assert_select "input#approval_asset_id[name=?]", "approval[asset_id]"
      assert_select "input#approval_approval_routing_scheme_id[name=?]", "approval[approval_routing_scheme_id]"
      assert_select "input#approval_approval_state_id[name=?]", "approval[approval_state_id]"
      assert_select "textarea#approval_comments[name=?]", "approval[comments]"
      assert_select "input#approval_requester_id[name=?]", "approval[requester_id]"
    end
  end
end
