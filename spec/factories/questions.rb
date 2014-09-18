# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    title 'a' * 21
    content 'b' * 200
    city 'Somewhere'
    email 'someone@example.com'
    phone '123456789'
  end
end
