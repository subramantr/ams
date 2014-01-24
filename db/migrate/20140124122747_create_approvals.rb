class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.integer :asset_id
      t.integer :approval_routing_scheme_id
      t.integer :approval_state_id
      t.text :comments
      t.integer :requester_id

      t.timestamps
    end
  end
end
