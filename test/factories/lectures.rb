# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lecture do
    name { generate :string }
    thesis { generate :string }
    user
    presentation { generate :image }
  end
end
