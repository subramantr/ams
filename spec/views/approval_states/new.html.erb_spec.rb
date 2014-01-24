require 'spec_helper'

describe "approval_states/new" do
  before(:each) do
    assign(:approval_state, stub_model(ApprovalState,
      :approval_state_name => "MyString"
    ).as_new_record)
  end

  it "renders new approval_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", approval_states_path, "post" do
      assert_select "input#approval_state_approval_state_name[name=?]", "approval_state[approval_state_name]"
    end
  end
end
