include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :presentation do
    title "Example image"
    file { fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png') }
  end
end
