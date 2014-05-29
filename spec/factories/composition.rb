FactoryGirl.define do
  factory :composition do
    title { Faker::Lorem.words(3).join(" ") }
    latitude 27.175015
    longitude 78.042155
    association :user
  end
end
