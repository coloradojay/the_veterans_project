FactoryGirl.define do
  factory :company do
  	name { Faker::Company.name }
		address1 { Faker::Address.street_address }
  	city { Faker::Address.city }
  	state { Faker::Address.state }
  	zip { Faker::Address.zip }
  	phone_number { Faker::PhoneNumber.phone_number }
  	email { Faker::Internet.email }
  	website "example.com"
  	description { Faker::Lorem.paragraph }
  	password "password"
  	num_employees "20"

  	trait :with_address2 do
  		address2 { Faker::Address.secondary_address }
  	end

	 	trait :with_verified do 
    	verified true
    end	

	 trait :with_facebook do 
	    	facebook "facebook.com"
	  end	
	  trait :with_twitter do 
	    	twitter "twitter.com" 
    end	

	  trait :with_google_plus do 
	    	google_plus "google.com"
    end	

    factory :full_company, traits:[:with_verified,:with_address2, :with_facebook, :with_twitter, :with_google_plus]
   
  end

end
