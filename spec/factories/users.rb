# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name(6) }
    email { Faker::Internet.email }
    password 'password'
  end

  factory :admin, class: User do
    user_name  "Admin"
    email ENV['ADMINB']
    password "password"
  end
end
