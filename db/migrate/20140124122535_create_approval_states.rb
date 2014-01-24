class CreateApprovalStates < ActiveRecord::Migration
  def change
    create_table :approval_states do |t|
      t.string :approval_state_name

      t.timestamps
    end
  end
end
