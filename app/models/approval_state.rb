class ApprovalState < ActiveRecord::Base
  attr_accessible :approval_state_name
  belongs_to :approval
end
