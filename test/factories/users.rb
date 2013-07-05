FactoryGirl.define do
  factory :user do
    email { generate :email }
    password { generate :string }
    password_confirmation { password }
    first_name { generate :string }
    last_name { generate :string }
    city { generate :string }
    company { generate :string }
    position { generate :string }
    about { generate :string }
    factory :admin_user do
      admin true
    end
  end
end
