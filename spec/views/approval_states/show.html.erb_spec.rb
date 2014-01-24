require 'spec_helper'

describe "approval_states/show" do
  before(:each) do
    @approval_state = assign(:approval_state, stub_model(ApprovalState,
      :approval_state_name => "Approval State Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Approval State Name/)
  end
end
