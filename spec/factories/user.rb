FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    password "monkeybutt"
    password_confirmation "monkeybutt"
  end
end
