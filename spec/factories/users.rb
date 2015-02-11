FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
    password "password"

    trait :with_verified do 
    	verified true
    end

    trait :with_military_experience do 
    	military_experience
    end

    trait :with_address do 
        address 
    end

    trait :with_skill do 
        skill 
    end

    factory :full_user, traits: [:with_verified, :with_military_experience, :with_address]
  end

end
