FactoryGirl.define do
  factory :skill do
  	sequence :name do |n|
  		"Skill_#{n}"
  	end
  end

end
