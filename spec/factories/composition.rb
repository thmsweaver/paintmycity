FactoryGirl.define do
  factory :composition do
    title { Faker::Lorem.words(3).join(" ") }
    latitute 27.175015
    longitute 78.042155
    association :user
  end
end
