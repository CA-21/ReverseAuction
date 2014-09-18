# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :lawyer do
    name { "#{Faker::Name.first_name} + #{Faker::Name.last_name}" }
    email { Faker::Internet.email }
    registration_number 'something'
    address 'some road in some city'
    city 'nowhere'
    phone { Faker::PhoneNumber.phone_number }
    password 'password123'
  end
end
