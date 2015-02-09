FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.cell_phone }

    trait :verified do 
    	verified true
    end

    trait :with_military_experience do 
    	military_experience
    end
  end

end
