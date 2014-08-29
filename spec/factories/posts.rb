# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.words(5).join }
    body  { Faker::Lorem.sentences(3).join }
    user
  end
end
