FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.cell_phone }
    password "password"
    trait :verified do 
    	verified true
    end

    trait :with_military_experience do 
    	military_experience
    end

    trait :with_address do 
        address 
    end

    factory :full_user, traits: [:verified, :with_military_experience, :with_address]
  end

end
