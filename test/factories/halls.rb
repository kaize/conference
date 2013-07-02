# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hall do
    name { generate :string }
  end
end
