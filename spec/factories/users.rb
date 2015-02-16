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

    trait :with_business do 
      business "true"
    end

    factory :full_user_company, traits: [:with_business]

    factory :full_user, traits: [:with_verified], parent: :user do |user|      
      transient do
        educations_count 2
        skills_count 7
        work_histories_count 3
      end

      skills { build_list :skill, skills_count }
      work_histories { build_list :work_history, work_histories_count }

       after(:create) do |user, evaluator|
        create_list(:education, evaluator.educations_count, user: user)
        create(:military_experience, user: user)
        create(:address, user: user)
      end
    end
  end

end
