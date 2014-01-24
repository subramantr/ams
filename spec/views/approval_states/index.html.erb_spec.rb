require 'spec_helper'

describe "approval_states/index" do
  before(:each) do
    assign(:approval_states, [
      stub_model(ApprovalState,
        :approval_state_name => "Approval State Name"
      ),
      stub_model(ApprovalState,
        :approval_state_name => "Approval State Name"
      )
    ])
  end

  it "renders a list of approval_states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Approval State Name".to_s, :count => 2
  end
end
