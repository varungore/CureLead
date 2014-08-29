# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    url { Faker::Internet.url + ".jpg" }
    post
  end
end
