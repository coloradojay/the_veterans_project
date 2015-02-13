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
    contact_name { Faker::Name.name }
    contact_position { Faker::Name.title }
    contact_email { Faker::Internet.email }
    contact_phone { Faker::PhoneNumber.phone_number }

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

    trait :with_sector do
      sector
    end

    trait :with_type do
      type
    end

    trait :with_vet_program do 
      vet_programs
    end

    factory :full_company, traits:[:with_verified,:with_address2, :with_facebook, :with_twitter, :with_google_plus, :with_sector, :with_type]
   
  end

end
