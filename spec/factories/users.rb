# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'John Doe'
    email 'john@doe.com'
    password 's3kr3t'
    password_confirmation 's3kr3t'
  end
end
