class Approval < ActiveRecord::Base
  attr_accessible :approval_routing_scheme_id, :approval_state_id, :asset_id, :comments, :requester_id
  has_one :approval_routing_scheme
  has_one :approval_state
  has_one :asset
end
