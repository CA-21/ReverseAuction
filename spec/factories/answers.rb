# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    title "MyString"
    content "MyText"
    estimated_fee 1
    estimated_time "MyString"
  end
end
