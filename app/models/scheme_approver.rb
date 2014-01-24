class SchemeApprover < ActiveRecord::Base
  attr_accessible :approval_routing_scheme_id, :approver_id, :approver_type
  belongs_to :approval_routing_scheme
end
