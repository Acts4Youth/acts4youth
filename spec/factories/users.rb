FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Devise.friendly_token }

    trait :admin do
      admin true
    end
  end
end
