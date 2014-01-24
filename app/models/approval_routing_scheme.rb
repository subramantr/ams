class ApprovalRoutingScheme < ActiveRecord::Base
  attr_accessible :scheme_name, :scheme_type
  has_one :approval
  has_many :scheme_approvers
end
