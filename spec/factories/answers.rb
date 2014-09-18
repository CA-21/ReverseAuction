# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    title 'a' * 51
    content 'b' * 201
    estimated_fee 100
    estimated_time 'sometime'
    association :question
    association :lawyer
  end
end