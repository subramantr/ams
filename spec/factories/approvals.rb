# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :approval do
    asset_id 1
    approval_routing_scheme_id 1
    approval_state_id 1
    comments "MyText"
    requester_id 1
  end
end
