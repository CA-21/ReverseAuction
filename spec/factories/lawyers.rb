# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lawyer do
    name 'Some Tester'
    sequence(:email) { |n| "some_tester#{n}@example.com" }
    registration_number 'something'
    address 'some road in some city'
    city 'nowhere'
    phone '123456789'
    password 'password123'
  end
end
