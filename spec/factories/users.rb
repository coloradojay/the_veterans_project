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

    factory :full_user, traits: [:with_verified, :with_military_experience, :with_address], parent: :user do |user|
      skills { build_list :skill, 3}
      work_histories {build_list :work_history, 5}
    end
  end

end
