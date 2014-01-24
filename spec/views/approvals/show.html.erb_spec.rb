require 'spec_helper'

describe "approvals/show" do
  before(:each) do
    @approval = assign(:approval, stub_model(Approval,
      :asset_id => 1,
      :approval_routing_scheme_id => 2,
      :approval_state_id => 3,
      :comments => "MyText",
      :requester_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
    rendered.should match(/4/)
  end
end
