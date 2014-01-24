require 'spec_helper'

describe "approval_states/edit" do
  before(:each) do
    @approval_state = assign(:approval_state, stub_model(ApprovalState,
      :approval_state_name => "MyString"
    ))
  end

  it "renders the edit approval_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", approval_state_path(@approval_state), "post" do
      assert_select "input#approval_state_approval_state_name[name=?]", "approval_state[approval_state_name]"
    end
  end
end
