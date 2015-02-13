FactoryGirl.define do
  factory :job do
  	title "Full Stack Dev"
  	city { Faker::Address.city }
    state { Faker::Address.state }
    description { Faker::Lorem.paragraph }
    salary "80K"
    company

  end

end
