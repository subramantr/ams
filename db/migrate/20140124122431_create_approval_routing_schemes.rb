class CreateApprovalRoutingSchemes < ActiveRecord::Migration
  def change
    create_table :approval_routing_schemes do |t|
      t.string :scheme_name
      t.string :scheme_type

      t.timestamps
    end
  end
end
