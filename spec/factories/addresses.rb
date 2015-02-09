FactoryGirl.define do
  factory :address do
  	address1 { Faker::Address.street_address }
  	city { Faker::Address.city }
  	state { Faker::Address.state }
  	zip { Faker::Address.zip }
  	user

  	trait :with_address2 do
  		address2 { Faker::Address.secondary_address }
  	end

  end

end
