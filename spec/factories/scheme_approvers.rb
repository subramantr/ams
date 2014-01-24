# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scheme_approver do
    approver_id 1
    approver_type "MyString"
    approval_routing_scheme_id 1
  end
end
