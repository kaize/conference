FactoryGirl.define do
  sequence :string do |n|
    "string#{n}"
  end

  sequence :body do |n|
    "body#{n}"
  end

  sequence :name do |n|
    "name#{n}"
  end

  sequence :email do |n|
    "email_#{n}@mail.com"
  end

  sequence :image do |n|
    fixture_file_upload Rails.root.to_s + "/test/fixtures/photos/example.jpg", "image/jpg"
  end
end
