class CreateSchemeApprovers < ActiveRecord::Migration
  def change
    create_table :scheme_approvers do |t|
      t.integer :approver_id
      t.string :approver_type
      t.integer :approval_routing_scheme_id

      t.timestamps
    end
  end
end
